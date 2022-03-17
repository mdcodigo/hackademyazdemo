data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  enabled_for_template_deployment = true
  tenant_id                       = var.tenant_id
  soft_delete_retention_days      = 7
  purge_protection_enabled        = false

  sku_name = "standard"
  /*
  access_policy {
    tenant_id = var.tenant_id
    object_id = var.serviceppal_id

    key_permissions = [
      "Get",
    ]

    secret_permissions = [
      "Get",
    ]

    storage_permissions = [
      "Get",
    ]
  }
  */
}


#Es necesario sacar afuera la access policy para que el secreto dependa de que primero se cree está 
# y no arroje error 403 al momento del Apply
resource "azurerm_key_vault_access_policy" "kv_acc_pol_tfuser" {
  key_vault_id = azurerm_key_vault.kv.id

  //tenant_id = var.tenant_id
  //object_id = var.serviceppal_id
  tenant_id = data.azurerm_client_config.current.tenant_id
  object_id = data.azurerm_client_config.current.object_id

  secret_permissions = [
    "list",
    "set",
    "get",
    "delete",
    "purge",
    "recover"
  ]
}

# resource "azurerm_key_vault_access_policy" "kv_acc_pol_app" {
#   key_vault_id = azurerm_key_vault.kv.id

#   tenant_id = data.azurerm_client_config.current.tenant_id
#   object_id = var.serviceppal_id

#   secret_permissions = [
#     "list",
#     "set",
#     "get",
#     "recover"
#   ]
# }


resource "azurerm_key_vault_secret" "kv_cnnstr_secret" {
  name         = "cnnstr"
  value        = var.sql_cnn_str
  key_vault_id = azurerm_key_vault.kv.id

  depends_on = [azurerm_key_vault_access_policy.kv_acc_pol_tfuser]
  //depends_on = [azurerm_key_vault.kv]
}
