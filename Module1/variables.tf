variable "region" {
  type        = string
  default     = "us-east-2"
  description = "AWS region where the resources need to be created"
}
variable "vpc_cidr" {
  description = "CIDR range for vpc"
  type        = string
  # default =         = "172.29.31.0/25"
  default = "172.29.31.0/25"
}

variable "vpc_name" {
  description = "Name of the vpc"
  type        = string
  default     = "arc-demo"
}
variable "name" {
  description = "Name of the vpc"
  type        = string
  default     = "arc-demo"
}

variable "public_subnets_cidr" {
  description = "list of public subnet CIDR blocks"
  type        = list(string)
  default     = ["172.29.31.0/27", "172.29.31.32/27"]
}

variable "private_subnets_cidr" {
  description = "list of private subnet CIDR blocks"
  type        = list(string)
  default     = ["172.29.31.64/27", "172.29.31.96/27"]
}

variable "availability_zones" {
  description = "list of availability zones"
  type        = list(string)
  default     = ["us-east-2a", "us-east-2b"]
}

variable "key_pair_name" {
  type    = string
  default = "demo-key"
}

variable "instance_type" {
  type        = string
  description = "EC2 Instance Type"
  default     = "t2.micro"
}

# variable "ami" {
#   default = "ami-01387af90a62e3c01"
# }
# variable "subnet_ids" {
#   type = list(string)
#   default = null


# }
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
  type    = string
  default = null
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
  type    = string
  default = null
}
variable "create" {
  description = "Whether to create this resource or not?"
  type        = bool
  default     = true
}
# variable "kms_key_id" {
#   type    = string
#   default = null
# }

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
# variable "master_user_secret_kms_key_id" {
#   type    = string
#   default = null
# }
# variable "vpc_security_group_ids" {
#   type = list[string]
# }
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
  default = false
  type    = bool

}
variable "backup_window" {
  type    = string
  default = null
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
