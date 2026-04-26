## @author ankur.pal
## Blog: paulsofts.com

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