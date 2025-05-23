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

