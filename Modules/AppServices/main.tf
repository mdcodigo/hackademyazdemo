locals {
  default_app_settings = {
    APPLICATION_INSIGHTS_IKEY      = "${var.instrumentation_key}"
    APPINSIGHTS_INSTRUMENTATIONKEY = "${var.instrumentation_key}"
  }
}

resource "azurerm_user_assigned_identity" "ekoapp" {
  resource_group_name = var.resource_group_name
  location            = var.location

  name = var.asp_name
}

resource "azurerm_app_service_plan" "ekoapp" {
  name                = var.asp_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    tier = lookup(var.sku, "tier")
    size = lookup(var.sku, "size")
  }
}

resource "azurerm_app_service" "ekoapp" {
  name                            = var.wa_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  app_service_plan_id             = azurerm_app_service_plan.ekoapp.id
  key_vault_reference_identity_id = azurerm_user_assigned_identity.ekoapp.id

  identity {
    type         = "SystemAssigned, UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.ekoapp.id]
  }

  dynamic "site_config" {
    for_each = [var.site_config]
    content {
      always_on                = lookup(site_config.value, "always_on", null)
      dotnet_framework_version = lookup(site_config.value, "dotnet_framework_version", null)
      scm_type                 = lookup(site_config.value, "None", null)
    }
  }

  app_settings = merge(local.default_app_settings, var.app_settings)

  dynamic "connection_string" {
    for_each = var.connection_string
    content {
      name  = lookup(connection_string.value, "name", null)
      type  = lookup(connection_string.value, "type", null)
      value = lookup(connection_string.value, "value", null)
    }
  }
}
