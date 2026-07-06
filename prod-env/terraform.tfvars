var_rgs = {
  rg1 = {
    name     = "rg1-prod"
    location = "central India"
  }
}


var_vnets = {
  vnet1               = "vnet-prod"
  location            = "Central India"
  resource_group_name = "rg1-prod"
  address_space       = ["10.0.0.0/16"]
}


var_snets = {
  subnet1 = {
    name                 = "frontend-subnet-prod"
    resource_group_name  = "rg1-prod"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["10.0.1.0/24"]

  }

  subnet2 = {
    name                 = "backend-subnet-prod"
    resource_group_name  = "rg1-prod"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["10.0.2.0/24"]

  }
  subnet3 = {
    name                 = "database-subnet-prod"
    resource_group_name  = "rg1-prod"
    virtual_network_name = "vnet-prod"
    address_prefixes     = ["10.0.3.0/24"]

  }
}
