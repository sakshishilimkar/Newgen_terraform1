data "aws_vpc" "selected_by_tag"{
  filter {
    name = "tag:Name"
    values = ["terraform"]
  }
}

output "vpc_cidr"{
  values = data.aws_vpc.selected_by_tag.cidr_block
}

output "vpc_name" {
  values = data.aws_vpc.selected_by_tag.tags["Name"]
}

output "vpc_id" {
  values = data.aws_vpc.selected_by_tag.id
}


resource "aws_instance" "test" {
  ami = var.ami_id
  instance_type = var.instance_type
}
