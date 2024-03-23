# Import the variables from the variables.tf file
terraform {
  required_version = ">= 0.12"
}

# Specify the backend configuration if needed

# Include the variables specific to the dev environment
variable "instance_count" {}
variable "instance_type" {}

# Include the AWS module
module "aws" {
  source = "../../modules/aws"
}
