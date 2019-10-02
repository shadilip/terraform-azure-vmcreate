# Create public IPs
resource "azurerm_public_ip" "myterraformpublicip" {
    name                         = "${azurerm_resource_group.azure_rg_new.name}-publicIp"
    location                     = "${azurerm_resource_group.azure_rg_new.location}"
    resource_group_name          = "${azurerm_resource_group.azure_rg_new.name}"
    allocation_method            = "Dynamic"
    domain_name_label            = "${var.dns_label}"
    tags = {
        environment = "${var.environment}"
    }
}