resource "azurerm_storage_account" "example" {
  name                     = "njstorage18"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "Dev-NJ"
  }
}