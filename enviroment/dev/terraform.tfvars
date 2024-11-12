rg_block = {
  rgroup = {
    name     = "tanu01"
    location = "centralindia"
  }
  rgroup1 = {
    name     = "tanu02"
    location = "centralindia"
  }

}
stgs_block = {
  storage01 = {
    name                     = "samjho01"
    location                 = "centralindia"
    resource_group_name      = "tanu01"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}


vnet_block = {
  vnets01 = {
    name                = "virtualnet01"
    location            = "central india"
    resource_group_name = "tanu01"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet_block = {
  subnet = {
    name                 = "subnet01"
    resource_group_name  = "tanu01"
    virtual_network_name = "virtualnet01"
    address_prefixes     = ["10.0.0.0/24"]
  }
}
vm_block = {
  vm1 = {
    vmname              = "dev_vm"
    resource_group_name = "tanu01"
    location            = "central india"
    nicname             = "nicnetwork"
  }
}
nic_block = {
  nic01 = {
    nicname                       = "nicnetwork"
    location                      = "central india"
    virtual_network_name          = "virtualnet01"
    resource_group_name           = "tanu01"
    ipname                        = "internal"
    private_ip_address_allocation = "Dynamic"
  }
}
pip_block = {
  pip = {
    ipname              = "publicip"
    location            = "centralindia"
    resource_group_name = "tanu01"
    allocation_method   = "Static"
  }
}
