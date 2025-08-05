  variable "ami_id" {
    description = "AMI ID of Join devops RHEL9"
    type        = string
    default     = "ami-09c813fb71547fc4f"
  }

  variable "instance_type" {
    description = "The type of EC2 instance to launch"
    type        = string
    default     = "t2.micro"
  }

  variable "ec2_tags" {
    type = map(string)
    default = {
        Name = "SampleEC2Instance"
        Environment = "Dev"
    }
  }

  variable "sg_name" {
      default = "allow_all"
  }

  variable "sg_description" {
      default = "Allow all inbound traffic and all outbound traffic"
  }

  variable "from_port" {
      default = 0
  }
  variable "to_port" {
      default = 0
  }
  variable "cidr_blocks" {
     type = list(string)
     default = [ "0.0.0.0/0" ]
  }
  variable "tags" {
      type = map(string)
      default = {
          Name = "SG_AllowAll"
      }
    
  }

