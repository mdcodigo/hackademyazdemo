output "resource_id" {
  description = "Id of Log Analytics resource in Azure."
  value       = azurerm_log_analytics_workspace.hackademy.id
}

output "workspace_id" {
  description = "Log Analytics Workspace id, this is just a guid."
  value       = azurerm_log_analytics_workspace.hackademy.workspace_id
}

output "app_insights_id" {
  value = azurerm_application_insights.hackademy.app_id
}
