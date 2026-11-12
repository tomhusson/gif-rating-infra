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
