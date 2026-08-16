rgs = {
  rg1 = {
    name     = "augustindependence"
    location = "eastus"
  }
}

stg = {

  stg1 = {
    name                     = "hariyaliteej123"
    location                 = "eastus"
    resource_group_name      = "augustindependence"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
cnt = {

  cnt1 = {
    name                  = "patangkatninahiaati"
    container_access_type = "private"
    data_name             = "hariyaliteej123"
    resource_group_name   = "augustindependence"
  }

}
