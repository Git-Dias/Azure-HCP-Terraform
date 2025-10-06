resource "azurerm_resource_group" "hcp_tf_lab" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_virtual_network" "lab_vnet" {
  name                = "vnet-lab"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.hcp_tf_lab.location
  resource_group_name = azurerm_resource_group.hcp_tf_lab.name
}

resource "azurerm_virtual_network" "lab_vnet_02" {
  name                = "vnet-lab-02"
  address_space       = ["10.0.0.0/16"] ##CIDR Block
  location            = azurerm_resource_group.hcp_tf_lab.location
  resource_group_name = azurerm_resource_group.hcp_tf_lab.name
}

