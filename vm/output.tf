output "Vm_name" {
  value = azurerm_virtual_machine.vms.id
}

output "Vm_id" {
  value = azurerm_virtual_machine.vms.id
}   

output "Vm_private_ip" {
  value = azurerm_network_interface.nic.private_ip_address
}

output "Vm_public_ip" {
  value = azurerm_public_ip.pip.ip_address
}

