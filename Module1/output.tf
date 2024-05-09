output "public_subnets_cidr" {
  value = module.networking.public_subnets
}

output "private_subnets" {
  value = module.networking.private_subnets
}

output "ami_id" {
  value = module.ec2.ami_id
}
