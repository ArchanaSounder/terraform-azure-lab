# Returns the output of Region Name
output "rg_name" {
  value = module.resource_group.resource_group_name
}

# Returns the output of Region Name
output "region" {
  value = module.vnet.region[0]
}

# Returns the output of VNet Name
output "vnet_name" {
  value = module.vnet.vnet_name[0]
}