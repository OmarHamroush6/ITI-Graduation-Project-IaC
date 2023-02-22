resource "aws_vpc" "lab-vpc" {
  cidr_block = var.vpc-cidr

  tags = {
    Name = "omar-vpc"
  }
}