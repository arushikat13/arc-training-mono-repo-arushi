subnet_ids                  = ["subnet-09bdfb8f8589c691f", "subnet-0ea95d2fca76e53eb"]
allocated_storage           = 50
db_name                     = "arushi_db"
engine                      = "mysql"
engine_version              = "8.0"
instance_class              = "db.t3.micro"
username                    = "admin"
allow_major_version_upgrade = false
auto_minor_version_upgrade  = false
apply_immediately           = true
create                      = true
storage_type                = "gp3"
storage_encrypted           = false
manage_master_user_password = true
db_subnet_group_name        = "rds_subnet"
multi_az                    = true
publicly_accessible         = false
max_allocated_storage       = 200
skip_final_snapshot         = true
deletion_protection         = false

security_group_name = "abc-rds"
vpc_id              = "vpc-0b5b03965422a4e53"




ingress_rules = [
  {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
]
egress_rules = [
  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  },

]
