resource "aws_db_subnet_group" "default" {
  name       = var.db_subnet_group_name
  subnet_ids = var.subnet_ids

  tags = {
    Name = var.db_subnet_group_name
  }
}

resource "aws_kms_key" "example" {
  deletion_window_in_days = 10
}

resource "aws_db_instance" "this" {
  count = var.create ? 1 : 0

  engine                      = var.engine
  engine_version              = var.engine_version
  instance_class              = var.instance_class
  allocated_storage           = var.allocated_storage
  storage_type                = var.storage_type
  storage_encrypted           = var.storage_encrypted
  db_name                     = var.db_name
  username                    = var.username
  manage_master_user_password = var.manage_master_user_password
  db_subnet_group_name        = var.db_subnet_group_name
  multi_az                    = var.multi_az
  publicly_accessible         = var.publicly_accessible
  allow_major_version_upgrade = var.allow_major_version_upgrade
  auto_minor_version_upgrade  = var.auto_minor_version_upgrade
  apply_immediately           = var.apply_immediately
  skip_final_snapshot         = var.skip_final_snapshot
  max_allocated_storage       = var.max_allocated_storage
  deletion_protection         = var.deletion_protection
  vpc_security_group_ids      = [aws_security_group.rds_sg.id]
}

resource "aws_security_group" "rds_sg" {
  name        = var.security_group_name
  description = "Security group for EC2 instance"

  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
  dynamic "egress" {
    for_each = var.egress_rules
    content {
      from_port   = egress.value.from_port
      to_port     = egress.value.to_port
      protocol    = egress.value.protocol
      cidr_blocks = egress.value.cidr_blocks
    }
  }
}
