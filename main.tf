#Create resource group
resource "azurerm_resource_group" "rg" {
  name     = "rg-${var.project_name}"
  location = var.location
}

module "mysql_database" {
  source              = "./modules/database"
  project_name        = var.project_name
  resource_group_name = azurerm_resource_group.rg.name
  admin_username      = var.db_admin_username
  admin_password      = var.db_admin_password
  database_name       = var.db_name
  sku_name            = "B_Standard_B1ms"
  storage_mb          = 5120
  mysql_version       = "5.7"
  location            = var.location
}
