locals {
  tags = {
    owner       = var.owner
    project     = var.project
    environment = var.environment
  }
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.project}-${var.environment}"
  location = var.location
  tags     = local.tags
}

module "network" {
  source = "./modules/network"

  name_prefix         = "${var.project}-${var.environment}"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = local.tags
}

module "storage" {
  source = "./modules/storage"

  name_prefix         = "${var.project}-${var.environment}"
  unique_suffix       = var.unique_suffix
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
  tags                = local.tags
}
