variable "rg-name" {
  description = "Name of the Resource Group"
    type        = string
    default     = "dev01-rg"
}
variable "location" {
  description = "Location for the Resource Group"
  type        = string
  default     = "East US"
}