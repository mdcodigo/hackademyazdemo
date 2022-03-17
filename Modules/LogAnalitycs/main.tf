resource "azurerm_log_analytics_workspace" "hackademy" {
  name                = "${var.name}-logs"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  tags = var.tags
}

resource "azurerm_log_analytics_solution" "hackademy" {
  count                 = length(var.solutions)
  solution_name         = var.solutions[count.index].solution_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.hackademy.id
  workspace_name        = azurerm_log_analytics_workspace.hackademy.name

  plan {
    publisher = var.solutions[count.index].publisher
    product   = var.solutions[count.index].product
  }

  tags = var.tags
}

resource "azurerm_application_insights" "hackademy" {
  name                = var.app_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_insights_type
  //workspace_id        = var.workspace_id
}
