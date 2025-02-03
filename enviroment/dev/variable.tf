
variable "nic_block" {
  type = map(any)
}
variable "pip_block" {
  type = map(any)
}
variable "rg_block" {
  type = map(any)
}

variable "stgs_block" {
  type = map(any)
}
variable "subnet_block" {
  type = map(any)
}
variable "vm_block" {
  type = map(any)
}
variable "vnet_block" {
  type = map(any)
}

variable "lnct" {
  type = map(object({
    name                = string
    resource_group_name = string
     storage_account_name  = string
  }))
  
}