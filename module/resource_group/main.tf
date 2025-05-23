resource "azurerm_resource_group" "ap_rg" {
  for_each = var.ap_rg
  name     = each.value.name
  location = each.value.location
}
