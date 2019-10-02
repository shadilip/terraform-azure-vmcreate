# Create a resource group if it doesn’t exist
resource "azurerm_resource_group" "azure_rg_new" {
    name="${var.resourceGroup}"
    location="${var.location}"

    tags = {
        environment = "${var.environment}"
    }
}