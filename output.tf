output "azurePublicIp" {
  value = "${azurerm_public_ip.myterraformpublicip.ip_address}"
}
