#default variable examples
variable "rg" {
  default = "iac-rg"
}
variable "location" {
  default = "Central India"
}
#multi rg with count loop
variable "multi_rg" {
  default = ["rg1", "rg2", "rg3"]
}
#for-each example multi rg
#for each only works with set or map!!!
variable "for_each_rg" {
  type = set(string)
  #trying to remove only 1 rg using loop
  #default = [ "myrg", "yourrg", "hisrg" ]
  default = [ "myrg", "hisrg" ]
}
