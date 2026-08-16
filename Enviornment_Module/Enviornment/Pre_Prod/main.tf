module "resource_group" {
  source = "../../Modules/Azurerm_Resource_group"
  rgs    = var.RGS
}

module "storage" {
  depends_on = [module.resource_group]
  source     = "../../Modules/azurerm_storage"
  storage    = var.STG
}
