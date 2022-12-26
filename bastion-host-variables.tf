##############################
## Bastion Host - Variables ##
##############################

variable "bastion_host_name" {
  type        = string
  description = "Azure Bastion Host Service Name"
  default     = "kopi-bastion-host"
}

variable "sku" {
  type        = string
  description = "Azure Bastion Host Service SKU"
  default     = "Basic" // Basic or Standard
}

variable "scale_units" {
  type        = string
  description = "Azure Bastion Host Service Scale Units"
  default     = 2 // Basic = 2 or Standard = 2 to 50
}
