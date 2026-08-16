resource "azurerm_storage_container" "sabne_hi_btaya2" {
    for_each = var.cnt
    name = each.value.name
  storage_account_id = data.azurerm_storage_account.data_storage[each.key].id
  container_access_type = each.value.container_access_type
}