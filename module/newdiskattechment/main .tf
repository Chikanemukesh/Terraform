resource "azurerm_managed_disk" "stg_disk" {
  for_each = var.stg_disk
  name                 = each.value.name
  location             = each.value.location
  resource_group_name  = each.value.resource_group_name
  storage_account_type = each.value.storage_account_type
  create_option        = each.value.create_option
  disk_size_gb         = each.value.disk_size_gb

#   tags = {
#     environment = "dev"
#   }
}
