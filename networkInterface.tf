# Create network interface
resource "azurerm_network_interface" "myterraformnic" {
    name                      = "${azurerm_resource_group.azure_rg_new.name}-azure-nic"
    location                  = "${azurerm_resource_group.azure_rg_new.location}"
    resource_group_name       = "${azurerm_resource_group.azure_rg_new.name}"
    network_security_group_id = "${azurerm_network_security_group.myterraformnsg.id}"

    ip_configuration {
        name                          = "${azurerm_resource_group.azure_rg_new.name}-ipconfig"
        subnet_id                     = "${azurerm_subnet.myterraformsubnet.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.myterraformpublicip.id}"
    }

    tags = {
        environment = "${var.environment}"
    }
}