variable "location" {
}
variable "resourcegroup" {
}
variable naming_prefix {
}
variable "tags" {
description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}
variable custom_domain_name {
}