output "vm_public_ip" {
  description = "Public IP address of the FoodAdvisor VM"
  value       = azurerm_public_ip.pip.ip_address
}

output "ssh_command" {
  description = "SSH command to connect to the VM"
  value       = "ssh azureuser@${azurerm_public_ip.pip.ip_address}"
}

output "strapi_url" {
  description = "Strapi backend URL"
  value       = "http://${azurerm_public_ip.pip.ip_address}:1337"
}

output "frontend_url" {
  description = "Next.js frontend URL"
  value       = "http://${azurerm_public_ip.pip.ip_address}:3000"
}
