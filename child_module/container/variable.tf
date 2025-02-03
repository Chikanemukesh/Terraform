variable "karishmacontainer" {
  type = map(object({
    name                = string
    resource_group_name = string
  }))
  
}