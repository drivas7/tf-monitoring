resource "aws_instance" "ec2_instance" {
  count         = var.instance_count
  ami           = var.instance_ami  # Ubuntu 20.04 LTS
  instance_type = var.instance_type

  tags = {
    Name = "ec2-instance-${count.index}"
  }
}
