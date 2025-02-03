data "azurerm_storage_account" "stgs_block" {
  for_each            = var.lnct
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}
