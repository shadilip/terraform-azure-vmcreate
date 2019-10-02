# Create subnet
resource "azurerm_subnet" "myterraformsubnet" {
    name                 = "${azurerm_resource_group.azure_rg_new.name}-az1-subnet"
    resource_group_name  = "${azurerm_resource_group.azure_rg_new.name}"
    virtual_network_name = "${azurerm_virtual_network.myterraformnetwork.name}"
    address_prefix       = "${var.vnetCidr}.1.0/24"
}