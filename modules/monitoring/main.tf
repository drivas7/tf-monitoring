# Generate SSH key pair
resource "tls_private_key" "my_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# Import public key to AWS
resource "aws_key_pair" "my_key_pair" {
  key_name   = "my-key"
  public_key = tls_private_key.my_key.public_key_openssh
}

# EC2 instance
resource "aws_instance" "central_instance" {
  ami           = var.instance_ami # Ubuntu 20.04 LTS
  instance_type = var.instance_type
  key_name      = aws_key_pair.my_key_pair.key_name  # Use the generated key pair

  tags = {
    Name = "central_instance"
  }

  provisioner "local-exec" {
    command = <<-EOT
      ansible-playbook \
      -i '${aws_instance.central_instance.public_ip},' \
      --user ubuntu
      --key-file="${tls_private_key.my_key.private_key_pem}" \
      -e "key=~/.ssh/id_rsa.pub"
      ../../modules/ansible/playbook.yml
    EOT
  }
}
