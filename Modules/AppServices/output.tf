output "app_service_plan_id" {
  value = azurerm_app_service_plan.ekoapp.id
}

output "app_service_id" {
  value = azurerm_app_service.ekoapp.id
}

output "app_service_name" {
  value = azurerm_app_service.ekoapp.name
}

output "app_service_default_site_hostname" {
  value = azurerm_app_service.ekoapp.default_site_hostname
}

output "app_service_outbound_ip_addresses" {
  value = split(",", azurerm_app_service.ekoapp.outbound_ip_addresses)
}

output "app_service_possible_outbound_ip_addresses" {
  value = split(",", azurerm_app_service.ekoapp.possible_outbound_ip_addresses)
}

output "app_service_source_control" {
  value = azurerm_app_service.ekoapp.source_control
}

output "app_sp" {
  value = azurerm_app_service.ekoapp.identity.*.principal_id
}

output "app_tenant_id" {
  value = azurerm_app_service.ekoapp.identity.*.tenant_id
}

output "principal_id" {
  value = azurerm_app_service.ekoapp.identity.0.principal_id
}

output "user_assigned_identity_id" {
  value = azurerm_user_assigned_identity.ekoapp.principal_id
}

///ouput Application Insight
# output "instrumentation_key" {
#   value = azurerm_application_insights.ekoapp.instrumentation_key
# }

# output "app_id" {
#   value = azurerm_application_insights.ekoapp.app_id
# }


