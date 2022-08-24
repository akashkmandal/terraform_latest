#one kind of variable example
resource "azurerm_resource_group" "myiac_rg" {
  name = var.rg
  location = var.location
}
#multi rg with count loop
resource "azurerm_resource_group" "rg_with_loop" {
  name = var.multi_rg[count.index]
  count = length(var.multi_rg)
  location = var.location
}
#for-each example multi rg
#for each only works with set or map!!!
resource "azurerm_resource_group" "for_each_rg" {
  name = each.value
  for_each = var.for_each_rg
  location = "westUS"
}
# what if we remove a single rg, should not remove all rgs? I made changes in variables.tf
