//// Project Variables
variable "prefix" {
  type = string
}

variable "project" {
  type = string
}

//// LogAnalytics
variable "loganalytics_name" {
  type = string

}

//// APP Service
variable "asp_name" {
  type = string
}
variable "wa_name" {
  type = string
}


//// SQLServer
variable "sqlserver_name" {
  type = string
}
variable "admin_username" {
  type = string
}
variable "db_name" {
  type = string
}
variable "admin_password" {
  type = string

}

//// FrontDoor
variable "frontdoor_name" {
  type = string
}
