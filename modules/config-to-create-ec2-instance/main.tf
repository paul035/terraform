provider "aws" {
    region = "us-east-1"
}

module "ec2-instance" {
  source = "./module"
  ami = var.ami_value
  instance_type = var.instance_type
}