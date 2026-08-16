data "azurerm_storage_account" "data_storage" {
  for_each            = var.cnt
  name                = each.value.data_name
  resource_group_name = each.value.resource_group_name
}

