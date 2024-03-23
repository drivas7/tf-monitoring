# Import the variables from the variables.tf file
terraform {
  required_version = ">= 0.12"
}

# The backend configuration stays as default - the aws module

# Include the AWS module without any variable overrides
module "aws_instances" {
  source = "../../modules/aws"
}

# Include the monitoring module
module "monitoring" {
  source = "../../modules/monitoring"
}