#output resource group name 
output "resource_group_name" {
  value = azurerm_resource_group.resourcegroup.name
}
output "api_key" {
  value = module.static.apikey
}
output "webapp_name" {
  value = module.static.webappname
}
output "id" {
  value = module.static.id
}
