module "resource_group" {
  source = "../child_module/azurerm_resource-group"
  rgs    = var.rgs
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "../child_module/azurerm_storage_account"
  stg        = var.stg
}

module "storage_container" {
  depends_on = [module.storage_account]
  source     = "../child_module/azurerm_container"
  cnt        = var.cnt
}