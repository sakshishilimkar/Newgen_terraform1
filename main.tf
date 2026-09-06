resource "aws_instance" "ubuntu_server" {
  ami           = var.ami_id
  instance_type = "t3.micro"

}

