# Override the instance_count variable for the dev environment
variable "instance_count" {
  default = 1  # Change the value as per your requirement for the dev environment
}

# Override the instance_type variable for the dev environment
variable "instance_type" {
  default = "t2.micro"  # Change the instance type as per your requirement for the dev environment
}
