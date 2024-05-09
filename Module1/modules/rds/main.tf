resource "aws_db_subnet_group" "default" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids

  tags = {
    Name = var.db_subnet_group_name
  }
}

resource "aws_db_parameter_group" "example" {
  name   = var.parameter_group_name
  family = var.family
  lifecycle {
    create_before_destroy = true
  }
}


resource "aws_kms_key" "example" {
  deletion_window_in_days = 10
}

resource "aws_db_instance" "this" {
  count = var.create ? 1 : 0

  engine                          = var.engine
  engine_version                  = var.engine_version
  instance_class                  = var.instance_class
  allocated_storage               = var.allocated_storage
  storage_type                    = var.storage_type
  storage_encrypted               = var.storage_encrypted
  kms_key_id                      = var.kms_key_id
  db_name                         = var.db_name
  username                        = var.username
  manage_master_user_password     = var.manage_master_user_password
  master_user_secret_kms_key_id   = var.master_user_secret_kms_key_id
  vpc_security_group_ids          = var.vpc_security_group_ids
  db_subnet_group_name            = var.db_subnet_group_name
  backup_retention_period         = var.backup_retention_period
  parameter_group_name            = var.parameter_group_name
  availability_zone               = var.availability_zone
  multi_az                        = var.multi_az
  publicly_accessible             = var.publicly_accessible
  allow_major_version_upgrade     = var.allow_major_version_upgrade
  auto_minor_version_upgrade      = var.auto_minor_version_upgrade
  apply_immediately               = var.apply_immediately
  maintenance_window              = var.maintenance_window
  skip_final_snapshot             = var.skip_final_snapshot
  backup_window                   = var.backup_window
  max_allocated_storage           = var.max_allocated_storage
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  deletion_protection             = var.deletion_protection
}
