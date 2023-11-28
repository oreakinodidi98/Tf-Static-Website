
#create resource group
resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resourcegroup
  location = var.location
  tags     = var.tags
}
#call the module for log analytics
module "loganalytics" {
  source                      = "./modules/loganalytics"
  location                    = var.location
  resourcegroup               = azurerm_resource_group.resourcegroup.name
  log_analytics_workspace_sku = var.log_analytics_workspace_sku
  naming_prefix               = var.naming_prefix
  depends_on                  = [azurerm_resource_group.resourcegroup]
}
#call the module for static web app
module "static" {
  source             = "./modules/static"
  location           = var.location
  resourcegroup      = azurerm_resource_group.resourcegroup.name
  naming_prefix      = var.naming_prefix
  tags               = var.tags
  custom_domain_name = var.custom_domain_name
  depends_on         = [azurerm_resource_group.resourcegroup]
}