## Create app service app plan
## all the web apps will be deployed in a single app service plan for better scaling

resource "azurerm_service_plan" "app_service_plan" {
  name                = "${var.app_name}-${var.app_service_plan}-${var.environment}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  os_type = "Windows"
  sku_name = "${var.app_service_plan_sku_name}"
  
}

