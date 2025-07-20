module "dev01_resources_group" {
  source = "./resources_group"
  rg-name = var.rg-name
  location = var.location
  
}