terraform {
  backend "azurerm" {
    resource_group_name  = "rghackademytf"
    storage_account_name = "hacktamedysa0x008"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      version = "~> 2.19"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rghackamedy" {
  name     = "rghackademy"
  location = "eastus"
}

//Para acceder al contexto de ejecución de TF
data "azurerm_client_config" "current" {}

locals {
  common_tags = {
    Terraform   = "true"
    Environment = "hackademy"
  }
  kv_name = "kvhackademy0x008"
}

//// #1 LogAnalitics
module "LogAnalitycs" {
  source              = "./Modules/LogAnalitycs"
  name                = var.loganalytics_name
  depends_on          = [azurerm_resource_group.rghackamedy]        // Dependencia Explicita.
  resource_group_name = azurerm_resource_group.rghackamedy.name     // Dependencia implicita
  location            = azurerm_resource_group.rghackamedy.location // Dependencia implicita
  sku                 = "Standalone"
  tags                = local.common_tags
  app_insights_name   = "${var.asp_name}app_insights"
  solutions = [
    {
      solution_name = "AzureActivity",
      publisher     = "Microsoft",
      product       = "OMSGallery/AzureActivity",
    },
  ]
}
//////// LogAnalitics ////////

//////// #2 SQLServer ////////
module "SQLServer" {
  source                       = "./Modules/SQLServer"
  depends_on                   = [module.LogAnalitycs]
  location                     = azurerm_resource_group.rghackamedy.location //Dependencia implicita
  sc_name                      = "holaychao"
  sqlserver_name               = var.sqlserver_name //== null ? "sqlserver${random_string.str.result}" : var.sqlserver_name
  db_name                      = var.db_name
  admin_username               = var.admin_username
  admin_password               = var.admin_password
  sql_database_edition         = "Standard"
  sqldb_service_objective_name = "S1"
  resource_group_name          = azurerm_resource_group.rghackamedy.name
  log_analytics_workspace_id   = module.LogAnalitycs.resource_id
  log_retention_days           = 7

  firewall_rules = [
    {
      name             = "access-to-azure"
      start_ip_address = "0.0.0.0"
      end_ip_address   = "0.0.0.0"
    },
    {
      name             = "desktop-ip"
      start_ip_address = "190.105.33.1"
      end_ip_address   = "190.105.33.254"
    }
  ]
  tags = local.common_tags
}
//////// SQLServer ////////

//////// #3 AppServices ////////
module "Appservice" {
  source              = "./Modules/AppServices"
  depends_on          = [module.SQLServer]
  asp_name            = var.asp_name
  wa_name             = var.wa_name
  name                = var.wa_name
  location            = azurerm_resource_group.rghackamedy.location
  resource_group_name = azurerm_resource_group.rghackamedy.name
  sku = {
    tier = "Standard"
    size = "S3"
  }
  site_config = {
    dotnet_framework_version = "v4.0"
    scm_type                 = "None"
  }
  app_settings = {}
  connection_string = [{
    name = "DefaultConnectionString"
    type = "SQLAzure"
    //value = format("@Microsoft.KeyVault(VaultName=%s;SecretName=cnnstr)", local.kv_name)
    value = format("@Microsoft.KeyVault(SecretUri=https://%s.vault.azure.net/secrets/cnnstr/)", local.kv_name)
  }]
  instrumentation_key = module.LogAnalitycs.app_insights_id
  //app_insights_name         = "${var.asp_name}app_insights"
  //application_insights_type = "web"
  //workspace_id = module.LogAnalitycs.workspace_id
}
//////// AppServices ////////

//////// #4 KeyVault ////////

module "KeyVault" {
  source              = "./Modules/KeyVault"
  name                = local.kv_name
  depends_on          = [module.SQLServer, module.Appservice]        //Dependencia Explicita
  location            = azurerm_resource_group.rghackamedy.location  // Dependencia implicita
  resource_group_name = azurerm_resource_group.rghackamedy.name      // Dependencia implicita
  tenant_id           = data.azurerm_client_config.current.tenant_id //var.tenant_id
  serviceppal_id      = module.Appservice.principal_id               //var.serviceppal_id
  sql_cnn_str         = module.SQLServer.connection_string
}

//Access policy para que el app service puede recuperar el secreto con el cnn str a la base.
resource "azurerm_key_vault_access_policy" "kv_acc_pol_app" {
  depends_on   = [module.KeyVault]
  key_vault_id = module.KeyVault.id

  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = module.Appservice.principal_id

  secret_permissions = [
    "list",
    "set",
    "get",
    "recover"
  ]
}

resource "azurerm_key_vault_access_policy" "kv_acc_pol_app2" {
  depends_on   = [module.KeyVault]
  key_vault_id = module.KeyVault.id

  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = module.Appservice.user_assigned_identity_id

  secret_permissions = [
    "list",
    "set",
    "get",
    "recover"
  ]
}
//////// KeyVault ////////

//// #5 FrontDoor
/*
module "Frontdoor" {
  source              = "./modules/FrontDoor"
  tags                = local.common_tags
  frontdoorname       = var.frontdoor_name
  location            = "Global"
  resource_group_name = "rghackademy"
  enforcebpcert       = "false"
  backendpoolname     = "myservers"
  acceptedprotocols   = ["Http"]
  patternstomatch     = ["/*"]
  frontend_endpoint = {
    name      = var.frontdoor_name
    host_name = "${var.frontdoor_name}.azurefd.net"
  }

  routing_rule = {
    rr1 = {
      name               = var.frontdoor_name
      frontend_endpoints = [var.frontdoor_name]
      accepted_protocols = ["Http", "Https"]
      patterns_to_match  = ["/*"]
      enabled            = true
      configuration      = "Forwarding"
      forwarding_configuration = {
        backend_pool_name                     = "misservers"
        cache_enabled                         = false
        cache_use_dynamic_compression         = false
        cache_query_parameter_strip_directive = "StripNone"
        custom_forwarding_path                = ""
        forwarding_protocol                   = "MatchRequest"
      }
      redirect_configuration = {
        custom_host         = ""
        redirect_protocol   = "MatchRequest"
        redirect_type       = "Found"
        custom_path         = ""
        custom_query_string = ""
      }
    }
  }

  ///////////////////////////
  backend_pool_load_balancing = {
    lb1 = {
      name                            = "exampleLoadBalancingSettings1"
      sample_size                     = 4
      successful_samples_required     = 2
      additional_latency_milliseconds = 0
    }
  }
  ///////////////////////////

  backend_pool_health_probe = {
    hp1 = {
      name                = "exampleHealthProbeSetting1"
      path                = "/"
      protocol            = "Http"
      interval_in_seconds = 120
    }
  }
  ////////////////////////////
  front-door-object-backend-pool = {
    backend_pool = {
      bp1 = {
        name = "misservers"
        backend = {
          app1 = {
            enabled     = true
            address     = module.Appservice.app_service_default_site_hostname
            host_header = module.Appservice.app_service_default_site_hostname
            http_port   = 80
            https_port  = 443
            priority    = 1
            weight      = 50
          }
        }
        load_balancing_name = "exampleLoadBalancingSettings1"
        health_probe_name   = "exampleHealthProbeSetting1"

      }
    }
  }
}
*/
//////////// FrontDoor ////////////

