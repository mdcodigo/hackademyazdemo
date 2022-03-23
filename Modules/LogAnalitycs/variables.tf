variable "name" {}
variable "resource_group_name" {}
variable "location" {}
variable "sku" {}
variable "app_insights_name" {}
variable "application_insights_type" {
  type    = string
  default = "web"
}
variable "tags" {}
variable "solutions" {
  type    = list(object({ solution_name = string, publisher = string, product = string }))
  default = []
}

