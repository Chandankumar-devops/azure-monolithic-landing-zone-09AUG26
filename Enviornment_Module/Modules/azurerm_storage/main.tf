resource "azurerm_storage_account" "STG" {
  for_each                 = var.storage
  name                     = each.value.name
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.art
}

resource "azurerm_storage_container" "example" {
  for_each              = var.storage
  name                  = each.value.cont_name
  storage_account_id    = resource.azurerm_storage_account.STG[each.key].id
  container_access_type = each.value.cat
}