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

output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "resource_group_id" {
  value = azurerm_resource_group.this.id
}
