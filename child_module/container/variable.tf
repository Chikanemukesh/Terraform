variable "lnct" {
  type = map(object({
    name                = string
    resource_group_name = string
     storage_account_name  = string
  }))
  
}