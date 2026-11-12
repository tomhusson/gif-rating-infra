resource "azurerm_storage_account" "main" {
  name                     = "st${replace(var.name_prefix, "-", "")}${var.unique_suffix}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  access_tier              = "Hot"

  min_tls_version                 = "TLS1_2"
  https_traffic_only_enabled      = true
  allow_nested_items_to_be_public = false

  blob_properties {
    delete_retention_policy {
      days = 7
    }
    container_delete_retention_policy {
      days = 7
    }
  }

  tags = var.tags
}

resource "azurerm_storage_container" "gifs" {
  name                  = "gifs"
  storage_account_id    = azurerm_storage_account.main.id
  container_access_type = "private"
}

resource "azurerm_storage_table" "gifs" {
  name               = "gifs"
  storage_account_id = azurerm_storage_account.main.id
}

resource "azurerm_storage_table" "ratings" {
  name               = "ratings"
  storage_account_id = azurerm_storage_account.main.id
}

resource "azurerm_storage_management_policy" "gifs" {
  storage_account_id = azurerm_storage_account.main.id

  rule {
    name    = "gifs-to-cool"
    enabled = true

    filters {
      prefix_match = ["gifs/"]
      blob_types   = ["blockBlob"]
    }

    actions {
      base_blob {
        tier_to_cool_after_days_since_modification_greater_than = var.cool_after_days
      }
    }
  }
}
