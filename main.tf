# Initialize AWS provider
provider "aws" {
  region = "us-east-1"
}

# Initialize GCP provider
provider "google" {
  project = var.gcp_project
  region  = "us-central1"
}

# Module invocation for AWS instances
module "aws_instances" {
  source        = "./modules/aws"
  instance_count = 2
}

# Module invocation for Prometheus and Grafana server
module "monitoring" {
  source  = "./modules/monitoring"
}
