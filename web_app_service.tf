## Create "td-services" web app in the app service plan created earlier
## all 3 web apps will be deployed in a single app service plan

data "azurerm_subscription" "current" {}

resource "azurerm_windows_web_app" "app_name_demo" {
  name                = "${var.app_name}-${var.environment}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  service_plan_id 	  = azurerm_service_plan.app_service_plan.id

  site_config { 
  always_on                 = false
  }  

}
