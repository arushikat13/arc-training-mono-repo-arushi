

resource "aws_instance" "arc_ec2" {
  ami             = data.aws_ami.latest_amazon_linux.id
  instance_type   = var.instance_type
  key_name        = var.key_pair_name
  security_groups = [aws_security_group.instance_ec2_sg.id]
  subnet_id       = var.subnet_id
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

data "aws_ami" "latest_amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  tags = {
    Name = "Latest Amazon Linux 2"
  }
}

resource "aws_security_group" "instance_ec2_sg" {
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
