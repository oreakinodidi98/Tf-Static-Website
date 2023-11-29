variable "resourcegroup" {
  description = "value for resourcegroup"
  type        = string
  default     = "rg-swa-01"
}
variable "location" {
  description = "value for location"
  type        = string
  default     = "eastus2"
}
variable "naming_prefix" {
  description = "The naming prefix for all resources in this example"
  type        = string
  default     = "swa"
}
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    environment = "dev"
    owner       = "Ore Akin"
    description = "App SWA Demo"
  }
}
variable "log_analytics_workspace_sku" {
  description = "The pricing SKU of the Log Analytics workspace."
  default     = "PerGB2018"
}
variable "custom_domain_name" {
  description = "The custom domain name for the static site."
  default     = "tfswademodomain.com"
}