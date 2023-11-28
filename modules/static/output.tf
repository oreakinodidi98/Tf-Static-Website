#output web app name
output "webappname" {
    value = azurerm_static_site.swa.name
    }
#output apikey
output "apikey" {
    value = azurerm_static_site.swa.api_key
    }
#output id
output "id" {
    value = azurerm_static_site.swa.id
    }
# output domain name
output "domain_name" {
    value = azurerm_static_site.swa.default_host_name
    }