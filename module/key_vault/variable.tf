variable "key_vault" {
  type = object({
    key = object({
      kname               = string
      location            = string
      resource_group_name = string
    })
  })
}
