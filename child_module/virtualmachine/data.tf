data "azurerm_network_interface" "nic-data" {
  for_each            = var.vm_block
  name                = each.value.nicname
  resource_group_name = each.value.resource_group_name
}
