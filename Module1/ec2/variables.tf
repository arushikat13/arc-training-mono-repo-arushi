variable "instance_type" {
  type        = string
  description = "EC2 Instance Type"
}

variable "key_pair_name" {
  type    = string
  default = ""
}
variable "name" {
  type        = string
  description = "Name of the instance"
}


# variable "private_key_algorithm" {
#   description = "Name of the algorithm to use when generating the private key. Currently-supported values are `RSA` and `ED25519`"
#   type        = string
#   default     = "RSA"
# }
# variable "private_key_rsa_bits" {
#   description = "When algorithm is `RSA`, the size of the generated RSA key, in bits (default: `4096`)"
#   type        = number
#   default     = 4096
# }
# variable "key_name" {
#   description = "The name for the key pair. Conflicts with `key_name_prefix`"
#   type        = string
#   default     = null
# }

variable "subnet_id" {
  default = ""
  type    = string
}

variable "ingress_rules" {
  description = "A list of ingress rules for the security group."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress_rules" {
  description = "A list of egress rules for the security group."
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "security_group_name" {
  default = ""
  type    = string
}

variable "vpc_id" {
  default = ""
  type    = string
}
