variable "location" {}
variable "resource_group_name" {}

//App Service Plan
variable "asp_name" {}
//SKU
variable "sku" {
  type = map(string)
}

//App Service 
variable "wa_name" {}

variable "site_config" {
  type = any
}

variable "app_settings" {
  type = map(string)
}

variable "connection_string" {
  type = list(map(string))
}

variable "instrumentation_key" {
  type = string
}

variable "name" {
  type        = string
  description = "Variable/Parametro para poder referenciar al app svc."
}
