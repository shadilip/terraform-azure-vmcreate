# Create virtual network
resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "${azurerm_resource_group.azure_rg_new.name}-net"
    address_space       = ["${var.vnetCidr}.0.0/16"]
    location            = "${azurerm_resource_group.azure_rg_new.location}"
    resource_group_name = "${azurerm_resource_group.azure_rg_new.name}"

    tags = {
        environment = "${var.environment}"
    }
}