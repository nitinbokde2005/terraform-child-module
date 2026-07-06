# var_backend = {
#   strg_acc1 = {
#     name                     = "strg_backend_11111"
#     resource_group_name      = "rg-backend"
#     location                 = "centralindia"
#     account_tier             = "Standard"
#     account_replication_type = "LRS"

#   }
# }

# var_container = {
#   tfstate = {
#     name            = "tfstate"
#     storage_acc_key = "strg_acc1"
#   }
# }

var_rgs = {
  rg1 = {
    name     = "rg1-dev"
    location = "Central India"
  }
}


var_vnets = {
  vnet1 = {
    name                = "vnet-dev"
    location            = "Central India"
    resource_group_name = "rg1-dev"
    address_space       = ["10.0.0.0/16"]
  }
}

var_snets = {
  subnet1 = {
    name                 = "frontend-subnet-dev"
    resource_group_name  = "rg1-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.0.1.0/24"]

  }

  subnet2 = {
    name                 = "backend-subnet-dev"
    resource_group_name  = "rg1-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.0.2.0/24"]

  }
  subnet3 = {
    name                 = "database-subnet-dev"
    resource_group_name  = "rg1-dev"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.0.3.0/24"]

  }
}
