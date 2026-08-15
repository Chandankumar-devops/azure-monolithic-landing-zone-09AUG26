RGS = {
  rg1 = {
    name     = "rg_lab"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg_testbud"
    location = "centralindia"
  }
}

STG = {
  st1 = {
    name                = "storagelaptop"
    resource_group_name = "rg_lab"
    location            = "centralindia"
    account_tier        = "Standard"
    art                 = "LRS"
    cont_name           = "tfstatestorage"
    cat                 = "private"
  }
}

