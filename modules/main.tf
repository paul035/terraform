## @author ankur.pal
## Blog: paulsofts.com

variable "ami_value" {
  description = "Value for AMI"
}

variable "instance_type_value" {
  description = "Value for instance type"
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "test-instance" {
    ami = var.ami_value
    instance_type = var.instance_type_value

    tags = {
    Name = "ec2_paulsofts"
  }
}