resource "aws_subnet" "subnets" {
  count             = length(var.subnets)
  vpc_id            = aws_vpc.lab-vpc.id
  cidr_block        = var.subnets-cidr[count.index]
  availability_zone = var.subnets-az[count.index]

  tags = {
    Name = var.subnets[count.index]
  }
}