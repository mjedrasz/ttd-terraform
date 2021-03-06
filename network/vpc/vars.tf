variable "vpc_name" {
  description = "VPC name (tag)"
}

variable "cidr" {
  description = "VPC cidr block. Example: 10.0.0.0/16"
}

variable "tags" {
  type = "map"
  default = {}
}