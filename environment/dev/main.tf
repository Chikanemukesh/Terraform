module "ap_rg" {
  source = "../../module/resource_group"
  ap_rg  = var.ap_rg
  
}
module "department_storage" {
  storage_blocks = var.storage_blocks
  source         = "../../module/storage_account"
  depends_on     = [module.ap_rg]
}
module "vnet_block" {
  vnet_block = var.vnet_block
  source     = "../../module/vnet"
  depends_on = [module.ap_rg]
}
module "subnet_block" {
  subnet_block = var.subnet_block
  source       = "../../module/subnet"
  depends_on   = [module.vnet_block]
}
module "vmss" {
  vmss       = var.vmss
  source     = "../../module/vmachine"
  depends_on = [module.vnet_block]
}
module "key_vault" {
  key_vault  = var.key_vault
  source     = "../../module/key_vault"
  depends_on = [module.ap_rg]
}
module "stg_disk" {
  stg_disk   = var.stg_disk
  source     = "../../module/newdiskattechment"
  depends_on = [module.ap_rg, module.vmss]

}