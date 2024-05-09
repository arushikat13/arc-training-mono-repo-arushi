module "networking" {
  source               = "./modules/networking"
  vpc_cidr             = var.vpc_cidr
  vpc_name             = var.vpc_name
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones   = var.availability_zones
}

module "ec2" {
  source                 = "./modules/ec2"
  ami_id                 = module.ec2.ami_id
  instance_type          = var.instance_type
  name                   = var.name
  key_pair_name          = var.key_pair_name
  vpc_security_group_ids = [module.networking.sg_id]
  subnet_id              = module.networking.private_subnets[0]
  depends_on             = [module.networking]
}
module "db" {
  source                          = "./modules/rds"
  create                          = var.create
  family                          = var.family
  engine                          = var.engine
  subnet_ids                      = [module.networking.private_subnets[0], module.networking.private_subnets[1]]
  engine_version                  = var.engine_version
  instance_class                  = var.instance_class
  allocated_storage               = var.allocated_storage
  storage_type                    = var.storage_type
  storage_encrypted               = var.storage_encrypted
  kms_key_id                      = module.db.kms_key_id
  publicly_accessible             = var.publicly_accessible
  db_name                         = var.db_name
  username                        = var.username
  manage_master_user_password     = var.manage_master_user_password
  master_user_secret_kms_key_id   = module.db.kms_key_id
  vpc_security_group_ids          = [module.networking.sg_id]
  db_subnet_group_name            = var.db_subnet_group_name
  parameter_group_name            = var.parameter_group_name
  availability_zone               = var.availability_zone
  multi_az                        = var.multi_az
  allow_major_version_upgrade     = var.allow_major_version_upgrade
  auto_minor_version_upgrade      = var.auto_minor_version_upgrade
  apply_immediately               = var.apply_immediately
  maintenance_window              = var.maintenance_window
  skip_final_snapshot             = var.skip_final_snapshot
  backup_retention_period         = var.backup_retention_period
  backup_window                   = var.backup_window
  max_allocated_storage           = var.max_allocated_storage
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  deletion_protection             = var.deletion_protection
  depends_on                      = [module.networking]
}
