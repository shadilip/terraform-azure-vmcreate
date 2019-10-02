# Create Network Security Group and rule
resource "azurerm_network_security_group" "myterraformnsg" {
    name                = "${azurerm_resource_group.azure_rg_new.name}-vnet-securitygroup"
    location            = "${azurerm_resource_group.azure_rg_new.location}"
    resource_group_name = "${azurerm_resource_group.azure_rg_new.name}"
    tags = {
        environment = "${var.environment}"
    }
}