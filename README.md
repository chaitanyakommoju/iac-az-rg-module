# iac-az-rg-module
## `azurerm_resource_group` Resource

This resource creates an Azure Resource Group.

### Arguments

- **name**: The name of the resource group.
- **location**: The location where the resource group will be created.
- **tags**: A map of tags applied to the resource group. It merges default tags with custom tags:
  - **org**: The organization name.
  - **region**: The Azure region where the resource group is deployed.
  - **env**: The environment (e.g., development, production).
  - **costcenter**: The cost center for the resource group.
  
### Example Usage

```hcl
resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location

  tags = merge(
    var.default_tags,
    {
      org       = var.orgname
      region    = var.location
      env       = var.environment
      costcenter = var.costcenter
    }
  )
}
