instance_type       = "t2.micro"
key_pair_name       = "abc"
name                = "abc"
subnet_id           = "subnet-0d336399b5b8a3418"
security_group_name = "abc"
vpc_id              = "vpc-0b5b03965422a4e53"




ingress_rules = [
  {
    from_port   = 22
    to_port     = 22
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
