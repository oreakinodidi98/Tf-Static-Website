#azure static site
resource "azurerm_static_site" "swa" {
  name                = "${var.naming_prefix}-static-web"
  resource_group_name = var.resourcegroup
  location            = var.location
  sku_tier = "Free"
  sku_size = "Free"
#   identity {
#     type = "SystemAssigned"
#   }
  tags = var.tags
}
# #need a custom domain for the static site 
# resource "azurerm_static_site_custom_domain" "txt" {
#   static_site_id  = azurerm_static_site.swa.id
#   domain_name     = "${azurerm_dns_cname_record.swa.name}.${azurerm_dns_cname_record.swa.zone_name}"
#   validation_type = "dns-txt-token"
# }
# # Azure DNS zone
# resource "azurerm_dns_zone" "swa" {
#   name                = var.custom_domain_name
#   resource_group_name = var.resourcegroup
#   tags = var.tags
# }
# # Azure DNS record
# resource "azurerm_dns_txt_record" "txt" {
#   name                = "test"
#   zone_name           = azurerm_dns_zone.swa.name
#   resource_group_name = var.resourcegroup
#   ttl                 = 300
#   record {
#     value = azurerm_static_site_custom_domain.txt.validation_token == "" ? "validated" : azurerm_static_site_custom_domain.txt.validation_token
#   }
# }
# resource "azurerm_dns_txt_record" "example" {
#   name                = "test"
#   zone_name           = azurerm_dns_zone.example.name
#   resource_group_name = azurerm_resource_group.example.name
#   ttl                 = 300
#   record {
#     value = "more site information here"
#   }

# }
# resource "azurerm_dns_cname_record" "swa" {
#   name                = var.custom_domain_name
#   zone_name           = "contoso.com"
#   resource_group_name = azurerm_resource_group.example.name
#   ttl                 = 300
#   record              = azurerm_static_site.example.default_host_name
# }