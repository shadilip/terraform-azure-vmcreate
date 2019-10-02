# Create virtual machine
resource "azurerm_virtual_machine" "myterraformvm" {
    name                  = "${azurerm_resource_group.azure_rg_new.name}-vm"
    location              = "${azurerm_resource_group.azure_rg_new.location}"
    resource_group_name   = "${azurerm_resource_group.azure_rg_new.name}"
    network_interface_ids = ["${azurerm_network_interface.myterraformnic.id}"]
    vm_size               = "${var.vmsize}"

    storage_os_disk {
        name              = "${azurerm_resource_group.azure_rg_new.name}-os-disk"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04.0-LTS"
        version   = "latest"
    }

    os_profile {
        computer_name  = "${azurerm_resource_group.azure_rg_new.name}-vm"
        admin_username = "${var.username}"
        admin_password = "${var.password}"
    }

    os_profile_linux_config {
        disable_password_authentication = "false"
    }

    boot_diagnostics {
        enabled = "true"
        storage_uri = "${azurerm_storage_account.mystorageaccount.primary_blob_endpoint}"
    }
    
    connection {
    type        = "ssh"
    user        = "${var.username}"
    password    = "${var.password}"
    host        = "${var.dns_label}.${var.dns_location}.cloudapp.azure.com"
    
    #private_key    = "${file("~/.ssh/id_rsa.pem")}"
    #agent       = false
    #timeout     = "30s"
  }

  provisioner "remote-exec" {
  inline = [
      "sudo apt-get update",
      "sudo DEBIAN_FRONTEND=noninteractive apt-get -y install nginx",
   ]
  
}
    tags = {
        environment = "${var.environment}"
    }
}