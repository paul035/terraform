/*

Terraform init : it will initialize the terraform provider plugins, so that you can talk to the provider
Terraform plan : this will give the preview of what exactly the configuration is going to create, change or destory
Terraform apply : it will actually create or update the infrastructure
Terraform destroy : this will destory the infrastructure resources

@author ankur.pal@paulsofts.com
*/

provider "aws" {
    region = "us-east-1" # Set your desired region
}

resource "aws_instance" "example" {
  ami = "ami-01xxxxxxxxxx"
  instance_type = "t3.micro"
  subnet_id = "subnet-your-subnet-id" # If not provided, AWS will use default VPC and SUBNET
  key_name = "your-key-pair-name" # Optional but needed for SSH

  tags = {
    Name = "my-ec2-instance"
  }
}

/*

TERRAFORM LIFECYCLE
Terraform init -> Terraform plan -> Terraform apply -> Terraform destroy

*/