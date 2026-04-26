/*
variable names
ami_value & instance_type_value
terraform apply will fetch values from tfvars and put in these variables

@author ankur.pal
@Blog paulsofts.com
*/
variable "ami_value" {
  description = "Value for AMI"
}

variable "instance_type_value" {
  description = "Value for instance type"
}