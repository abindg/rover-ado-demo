resource "azurerm_linux_virtual_machine" "web_linuxvm" {
  name                            = "${local.resource_name_prefix}-${var.hostname}"
  resource_group_name             = azurerm_resource_group.rsg.name
  location                        = azurerm_resource_group.rsg.location
  size                            = var.size
  admin_username                  = var.user
  admin_password                  = var.password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.web_vnic.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "OpenLogic"
    offer     = "CentOS"
    sku       = "7.5"
    version   = "latest"
  }

  tags = local.tag_name
}

output "publicip" {
  value = azurerm_linux_virtual_machine.web_linuxvm.public_ip_address 
}

 