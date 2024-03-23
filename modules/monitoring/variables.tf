variable "instance_ami" {
  description = "AMI ID for instances to create"
  type        = string
  default     = "ami-06f8dce63a6b60467"  # default value for prod
}

variable "instance_type" {
  description = "Type of instances to create"
  type        = string
  default     = "t3.micro"  # default value for prod
}