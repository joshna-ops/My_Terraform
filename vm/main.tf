resource "azurerm_virtual_machine" "vms" {
    #count                 = var.vm_count
    name                  = "${var.vm_name_prefix}-1"
    location              = var.location
    resource_group_name   = var.resource_group_name
    network_interface_ids = [azurerm_network_interface.nic.id]
    vm_size               = var.vm_size
    
    storage_image_reference {
        publisher = var.vm_image_publisher
        offer     = var.vm_image_offer
        sku       = var.vm_image_sku
        version   = "latest"
    }
    
    storage_os_disk {
        name              = "${var.vm_name_prefix}-osdisk-1"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Standard_LRS"
    }
    
    os_profile {
        computer_name  = "${var.vm_name_prefix}-1"
        admin_username = var.admin_username
        admin_password = var.admin_password
    }
    
    os_profile_linux_config {
        disable_password_authentication = false
    }
    
    tags = var.tags
  
}

resource "azurerm_network_interface" "nic" {
    name                = "${var.vm_name_prefix}-nic-1"
    location            = var.location
    resource_group_name = var.resource_group_name
    
    ip_configuration {
        name                          = "${var.vm_name_prefix}-ipconfig-1"
        subnet_id                     = var.subnet_id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = azurerm_public_ip.pip.id
    }
    
    tags = var.tags
}

resource "azurerm_public_ip" "pip" {
    name                = "${var.vm_name_prefix}-pip-1"
    location            = var.location
    resource_group_name = var.resource_group_name
    allocation_method   = "Dynamic"
    
    tags = var.tags
}