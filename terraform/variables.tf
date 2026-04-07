variable "cidr_block" {
  description = "CIDR range of the VPC"
  type = string
}

variable "public_1" {
  description = "CIDR range of public_1 subnet"
  type = string
}

variable "public_2" {
  description = "CIDR range of public_2 subnet"
  type = string
}

variable "private_1" {
  description = "CIDR range of private_1 subnet"
  type = string
}

variable "private_2" {
  description = "CIDR range of private_2 subnet"
  type = string
}