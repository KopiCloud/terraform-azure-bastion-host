##############################
## Core Network - Variables ##
##############################

variable "network-vnet-cidr" {
  type        = string
  description = "The CIDR of the network VNET"
}

variable "network-vm-subnet-cidr" {
  type        = string
  description = "The CIDR for the virtual machine subnet"
}

variable "network-bastion-subnet-cidr" {
  type        = string
  description = "The CIDR for the bastion service subnet"
}