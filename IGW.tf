resource "aws_internet_gateway" "omar_igw" {
  vpc_id = aws_vpc.lab-vpc.id
  tags = {
    Name = "omar_igw"
  }
}