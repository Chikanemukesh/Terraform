resource "azurerm_storage_container" "lnct" {
  for_each              = var.lnct
  name                  = each.value.name
  storage_account_id    = data.azurerm_storage_account.container[each.key].id
  container_access_type = "private"
}
