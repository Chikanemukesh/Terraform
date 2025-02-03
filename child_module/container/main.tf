resource "azurerm_storage_container" "karishmacontainer" {
  for_each           = var.karishmacontainer
  name               = each.value.name
  storage_account_id = data.azurerm_storage_account.container[each.key].id

  container_access_type = "private"
}
