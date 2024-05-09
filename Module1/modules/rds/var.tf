variable "subnet_ids" {
  type    = list(string)
  default = null
}
variable "family" {
  type = string
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
variable "parameter_group_name" {
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
variable "maintenance_window" {
  type = string
}
variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}
variable "kms_key_id" {
  type    = string
  default = null
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
variable "master_user_secret_kms_key_id" {
  type    = string
  default = null
}
variable "vpc_security_group_ids" {
  type = list(string)
}
variable "db_subnet_group_name" {
  type = string
}
# variable "option_group_name" {
#   type = string
# }
variable "availability_zone" {
  default = null
  type    = string
}
variable "multi_az" {
  type = bool
}
variable "publicly_accessible" {
  default = null
  type    = bool
}
variable "backup_window" {
  type = string
}
variable "max_allocated_storage" {
  default = null
  type    = number

}
variable "enabled_cloudwatch_logs_exports" {
  type = list(string)
}
variable "skip_final_snapshot" {
  type = bool
}
variable "deletion_protection" {
  type = bool
}
variable "backup_retention_period" {
  type = number
}
