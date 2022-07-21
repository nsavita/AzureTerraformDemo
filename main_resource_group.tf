## Create a resource group
resource "azurerm_resource_group" "resource_group" {
  name      = "${var.app_name}-${var.app_resource_group_name}-${var.environment}"
  location  = var.location
}


