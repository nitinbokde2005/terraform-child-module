var_rgbkend ={
  rg_backend = {
    name = "rg-backend"
    location  = "Central India"
  }
}

var_strgacc = {
  strg_acc1 = {
    name                     = "strgbackend11111"
    resource_group_name      = "rg-backend"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"

  }
}

var_container = {

  tfstate1 = {
    name            = "tfstate-dev"
    storage_acc_key = "strg_acc1"
    blob_name       = "dev.terraform.tfstate"
  }

  tfstate2 = {
    name            = "tfstate-prod"
    storage_acc_key = "strg_acc1"
    blob_name       = "prod.terraform.tfstate"
  }

}

