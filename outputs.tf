output "vm_suffix" {
  value = {
    for k, v in random_string.server_suffix : k => v.result
  }
}

output "fqdns" {
  value = {
    for k, v in azurerm_public_ip.vm_public_ip : k => v.fqdn
  }
}