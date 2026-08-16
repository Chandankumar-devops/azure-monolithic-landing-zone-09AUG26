resource "azurerm_resource_group" "sabne_hi_btaya" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}
