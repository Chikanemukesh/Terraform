module "rg_block" {
  source   = "../../child_module/resource_group"
  rg_block = var.rg_block
}


module "stgs_block" {
  source     = "../../child_module/stroage_account"
  stgs_block = var.stgs_block
  depends_on = [module.rg_block]
}

module "lnct" {
  source     = "../../child_module/container"
  lnct       = var.lnct
  depends_on = [module.stgs_block]
}


module "vnet_block" {
  source     = "../../child_module/vnet"
  vnet_block = var.vnet_block
  depends_on = [module.rg_block]
}
module "subnet_block" {
  source       = "../../child_module/subnet"
  subnet_block = var.subnet_block
  depends_on   = [module.vnet_block]

}
module "nic_block" {
  source     = "../../child_module/nic"
  nic_block  = var.nic_block
  depends_on = [module.subnet_block]

}
module "vm_block" {
  source     = "../../child_module/virtualmachine"
  vm_block   = var.vm_block
  depends_on = [module.rg_block, module.nic_block]
}
module "pip_block" {
  source     = "../../child_module/public_ip"
  pip_block  = var.pip_block
  depends_on = [module.vm_block]
}
