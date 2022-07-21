## All the generic variables are declared/defined in this file. 
## However, the values for a specific environment are defined separately in ".tfvars" file

variable "app_resource_group_name" {
  type = string
  description = "The name of the resource group."
  default = "rg"
}


variable "app_name" {
  type = string
  description = "The name of the application."
  default = "appNitish"
}

variable "environment" {
  type = string
  description = "The name of the environment that is being deployed" 
}

variable "location" {
  type = string
  description = "The location/region where the resources will be deployed."
  default = "centralus"
}

variable "app_service_plan" {
  type = string
  description = "The name of the app service plan that contains all the web apps."
  default = "asPlanNitish"
}

variable "app_service_plan_sku_tier" {
  type = string
  description = "The SKU tier used for the app service plan."
}

variable "app_service_plan_sku_size" {
  type = string
  description = "The SKU size used for the app service plan." 
}

variable "app_service_plan_sku_name" {
  type = string
  description = "The SKU tier used for the app service plan."
  default = "F1"
}