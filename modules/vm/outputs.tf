output "vm_id" {
  description = "VM resource ID"
  value       = azurerm_windows_virtual_machine.vm.id
}

output "vm_name" {
  description = "VM name"
  value       = azurerm_windows_virtual_machine.vm.name
}

output "private_ip" {
  description = "Private IP address of the VM"
  value       = azurerm_network_interface.vm_nic.private_ip_address
}

output "public_ip" {
  description = "Public IP address of the VM (if enabled)"
  value       = var.public_ip_enabled ? azurerm_public_ip.vm_public_ip[0].ip_address : null
}

output "admin_password" {
  description = "Admin password for the VM"
  value       = random_password.vm_password.result
  sensitive   = true
}