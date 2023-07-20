provider "azurerm" {
  features {}
  subscription_id   = var.subscription_id
  tenant_id         = var.tenant_id
  client_id         = var.client_id
  client_secret     = var.client_secret
}

# Modules definition for creating Storage resource group
module "resource_group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  region              = var.region
  tagvalue            = var.tagvalue
  environment         = var.environment
}

# Module to create Vnet for our environment
module "vnet" {
  source              = "./modules/vnet"
  resource_group_name = module.resource_group.resource_group_name
  vnet_enable         = var.vnet_enable
  region              = var.region
  vnet_name           = var.vnet_name
  vnet_address        = var.vnet_address
  tagvalue            = var.tagvalue
  environment         = var.environment
}
