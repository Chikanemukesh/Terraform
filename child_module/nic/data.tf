data "azurerm_subnet" "subnet_block" {
  for_each             = var.nic_block
  name                 = each.value.dataname
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name 
}
