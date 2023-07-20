# Variable declaration for Region
variable "region" {
  description = "The region of Key Vault"
}


# Variable declaration Resource Group Name
variable "resource_group_name" {
  description = "The resource group name for all resources"
  default     = "training-demo"
}
# Variable declaration for Tags to be added
variable "tagvalue" {
  description = "The value for the tag"
  type        = map(any)
}

# Variable declaration for Environment
variable "environment" {
  description = "The environment name to be provided"
}

# Variable declaration for VNET enable/disable
variable "vnet_enable" {
  default = 1
}


# Variable Declaration for Vet name 
variable "vnet_name" {
  type    = list(any)
  default = [""]
}
# Variable Declaration for Vnet Address
variable "vnet_address" {
  type    = list(any)
  default = [""]
}
variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}
