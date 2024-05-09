

resource "aws_instance" "arc_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_pair_name
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id
  tags = {
    Name = "${var.name}-instance"
  }
}

resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "demo-key" {
  key_name   = var.key_pair_name
  public_key = tls_private_key.this.public_key_openssh
}

resource "local_file" "this" {
  content  = tls_private_key.this.private_key_pem
  filename = var.key_pair_name
}
