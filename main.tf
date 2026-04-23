
/*
terraform init : reads the terraform configuration file and initialize the configuration
terraform plan : creates the execution plan that is used to preview the changes that terraform plans to make your infrastructure
terraform apply : used to create the infrastructure resources that is defined in terraform configuration file
terraform destory : destroy the resources

@author ankur.pal@paulsofts.com
*/


# Create EC2 instance
provider "aws" {
    region = "us-east-1" #Set your desigered region
}

resource "aws_instance" "example" {
    ami = "ami-01bd68d45d27a101f" # Specify a correct AMI
    instance_type = "t3.micro"
}

/**
Terraform Lifecycle
    terraform init --> terraform plan --> terraform apply --> terraform destroy
**/