resource "azurerm_linux_virtual_machine" "vm_block" {
  for_each              = var.vm_block
  name                  = each.value.vmname
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  size                  = "Standard_F2"
  admin_username        = "adminuser"
  admin_password        = "Azure@123456"
  network_interface_ids = [data.azurerm_network_interface.nic-data[each.key].id]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
