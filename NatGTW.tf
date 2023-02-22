resource "aws_nat_gateway" "omar-GW" {

  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.subnets[0].id
}