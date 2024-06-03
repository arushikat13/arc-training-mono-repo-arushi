variable "subnet_ids" {
  type    = list(string)
  default = null
}
variable "allocated_storage" {
  type = number
}
variable "db_name" {
  type = string
}
variable "engine" {
  type = string
}
variable "engine_version" {
  type = string
}
variable "instance_class" {
  type = string
}
variable "username" {
  type = string
}
variable "allow_major_version_upgrade" {
  type = bool
}
variable "auto_minor_version_upgrade" {
  type = bool
}
variable "apply_immediately" {
  default = null
  type    = bool
}
variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}

variable "storage_type" {
  type    = string
  default = null
}

variable "storage_encrypted" {
  type    = bool
  default = true
}
variable "manage_master_user_password" {
  type    = bool
  default = true
}
variable "db_subnet_group_name" {
  type = string
}
# variable "option_group_name" {
#   type = string
# }
variable "multi_az" {
  type = bool
}
variable "publicly_accessible" {
  default = null
  type    = bool
}
variable "max_allocated_storage" {
  default = null
  type    = number

}
variable "skip_final_snapshot" {
  type = bool
}
variable "deletion_protection" {
  type = bool
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
  type = string
}
variable "vpc_id" {
  type = string
}
