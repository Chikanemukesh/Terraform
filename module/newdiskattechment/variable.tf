variable "stg_disk" {
    type = map(object({
      name =string
       location = string
       resource_group_name = string
       storage_account_type = string
       create_option = string
       disk_size_gb = string
    }))
  
}