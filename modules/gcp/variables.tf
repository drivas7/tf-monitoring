variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 1  # default value for dev
}

variable "instance_type" {
  description = "Type of instances to create"
  type        = string
  default     = "f1-micro"  # default value for dev
}