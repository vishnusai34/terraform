resource "aws_instance" "example" {
  ami           = var.ami_id # Replace with a valid AMI ID for your region
  instance_type = var.instance_type
  security_groups = [aws_security_group.allow_alltraffic.name]

  tags = var.ec2_tags
}

resource "aws_security_group" "allow_alltraffic" {
    name        = var.sg_name
    description = var.sg_description

    ingress {
      from_port        = var.from_port
      to_port          = var.to_port
      protocol         = "-1"
      cidr_blocks      = var.cidr_blocks
      ipv6_cidr_blocks = ["::/0"]
    }
    egress {
      from_port        = var.from_port
      to_port          = var.to_port
      protocol         = "-1"
      cidr_blocks      = var.cidr_blocks
      ipv6_cidr_blocks = ["::/0"]
    }

    tags = var.tags
}