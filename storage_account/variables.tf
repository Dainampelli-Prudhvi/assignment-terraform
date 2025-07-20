variable "devstor1ge_account_name" {
  description = "Name of the Storage Account"
  type        = string
  default     = "storacct"
  
}
variable "account_tier" {
  description = "Name of the Resource Group"
  type        = string
  default     = "Standard"
}
variable "account_replication_type" {
  description = "Replication type for the Storage Account"
  type        = string
  default     = "LRS"
  
}
variable "location" {
  description = "Location for the Storage Account"
  type        = string
  default     = "East US"
  
}