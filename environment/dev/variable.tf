variable "ap_rg" {
  type = map(
    object({
      name     = string
      location = string
      }
  ))
}


variable "storage_blocks" {
  type = map(
    object({
      name                     = string
      resource_group_name      = string
      location                 = string
      account_tier             = string
      account_replication_type = string
    })
  )
}

variable "key_vault" {
  type = object({
    key = object({
      kname               = string
      location            = string
      resource_group_name = string
    })
  })
}


variable "subnet_block" {
  type = map(
    object({
      name                 = string
      resource_group_name  = string
      virtual_network_name = string
      address_prefixes     = list(string)
  }))
}


variable "vmss" {
  type = map(object({
    sname                = string
    virtual_network_name = string
    resource_group_name  = string
    nicname              = string
    location             = string
    vname                = string
    size                 = string

  }))
}

variable "vnet_block" {
  type = map(
    object({
      name                = string
      location            = string
      resource_group_name = string
      address_space       = list(string)

    })
  )
}

variable "stg_disk" {
  type = map(object({
    name                 = string
    location             = string
    resource_group_name  = string
    storage_account_type = string
    create_option        = string
    disk_size_gb         = string
  }))

}