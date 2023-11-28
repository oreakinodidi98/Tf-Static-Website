#output web app name
output "webappname" {
    value = azurerm_static_site.swa.name
    }
