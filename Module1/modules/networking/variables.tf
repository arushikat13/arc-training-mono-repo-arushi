variable "vpc_cidr" {
  description = "CIDR range for vpc"
  type        = string
}

variable "vpc_name" {
  description = "Name of the vpc"
  type        = string
}

variable "public_subnets_cidr" {
  description = "list of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnets_cidr" {
  description = "list of private subnet CIDR blocks"
  type        = list(string)
}

variable "availability_zones" {
  description = "list of availability zones"
  type        = list(string)
}
