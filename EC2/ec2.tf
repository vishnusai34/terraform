resource "aws_instance" "example" {
  ami           = "ami-09c813fb71547fc4f" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
  security_groups = [aws_security_group.allow_alltraffic.name]

  tags = {
    Name = "SampleInstance"
  }
}

resource "aws_security_group" "allow_alltraffic" {
    name        = "allow_all"
    description = "Allow all inbound traffic and all outbound traffic"

    ingress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
    egress {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name: "SG_AllowAll"
    }
}