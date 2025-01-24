provider "azurerm" {
  features {}
  subscription_id = "48fa072f-dc2c-4617-ad1e-c7325d9377bf"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-showcase-2025"
  location = "westeurope"
}

resource "azurerm_storage_account" "storage" {
  name                     = "showcase2025storage"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  https_traffic_only_enabled = true
  min_tls_version          = "TLS1_2"
  allow_nested_items_to_be_public = true
}


# Create the $web container for static website hosting
resource "azurerm_storage_container" "web_container" {
  name                  = "$web"
  storage_account_id    = azurerm_storage_account.storage.id  # Use storage_account_id instead of storage_account_name
  container_access_type = "container"
}

resource "azurerm_storage_account_static_website" "website" {
  storage_account_id = azurerm_storage_account.storage.id
  index_document     = "index.html"
}

resource "azurerm_storage_blob" "html" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.web_container.name
  type                   = "Block"
  source                 = "index.html"
  content_type           = "text/html"  # Add this line to specify the correct MIME type
}
