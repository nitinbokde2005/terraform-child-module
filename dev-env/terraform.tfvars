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
