variable "ami_id" {
  type        = string
  description = "AMI for the EC2 instance"
}

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

variable "vpc_security_group_ids" {
  type = list(string)
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
