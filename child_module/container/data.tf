data "azurerm_storage_account" "karishmacontainer" {
    for_each = var.karishmacontainer
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}