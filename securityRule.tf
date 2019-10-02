resource "azurerm_network_security_rule" "my-security-rule" {
        name                       = "${azurerm_resource_group.azure_rg_new.name}-my-srule-ssh"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
        resource_group_name        = "${azurerm_resource_group.azure_rg_new.name}"
        network_security_group_name= "${azurerm_network_security_group.myterraformnsg.name}"
}
