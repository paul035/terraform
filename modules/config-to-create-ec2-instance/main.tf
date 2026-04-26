provider "aws" {
    region = "us-east-1"
}

module "ec2-instance" {
  source = "./create-ec2-instance"
  ami = var.ami_value
  instance_type = var.instance_type
}