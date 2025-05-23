ap_rg = {
  rg01 = {
    name     = "azuredevops"
    location = "centralindia"
  }
  rg02 = {
    name     = "tcsindore1"
    location = "centralindia"
  }
 }
storage_blocks = {
  westdepartment = {
    name                     = "storagedepart"
    resource_group_name      = "azuredevops"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  eastdepartment = {
    name                     = "storagedeparts"
    resource_group_name      = "tcsindore"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
vnet_block = {
  vnets = {
    name                = "vneto1"
    location            = "centralindia"
    resource_group_name = "tcsindore"
    address_space       = ["10.0.1.0/16"]
  }
  vnets01 = {
    name                = "vneto11"
    location            = "centralindia"
    resource_group_name = "azuredevops"
    address_space       = ["10.0.0.0/16"]
  }

}
subnet_block = {
  subnet = {
    name                 = "subneto1"
    resource_group_name  = "azuredevops"
    virtual_network_name = "vneto1"
    address_prefixes     = ["10.0.1.0/24"]

  }
}
vmss = {
  vm1 = {
    sname                = "subneto1"
    virtual_network_name = "vneto1"
    resource_group_name  = "azuredevops"
    nicname              = "nictcs"
    vname                = "chikane"
    size                 = "Standard_F2"
    location             = "centralindia"

  }
}
key_vault = {
  key = {
    kname               = "lnct"
    location            = "centralindia"
    resource_group_name = "tanu01"
  }
}

stg_disk = {
  diskname = {
    dname                = "diskname1"
    name                 = "diskname1"
    resource_group_name  = "tanu01"
    location             = "centralindia"
    storage_account_type = "Standard_LRS"
    create_option        = "Restore"
    disk_size_gb         = "5"

  }
}

