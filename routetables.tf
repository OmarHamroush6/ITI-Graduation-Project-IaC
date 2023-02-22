resource "aws_route_table" "public" {
  vpc_id = aws_vpc.lab-vpc.id
  tags = {
    "key" = "route table"
  }
}

resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = var.web-traffic
  gateway_id             = aws_internet_gateway.omar_igw.id
}

resource "aws_route_table_association" "public-1" {
  subnet_id      = aws_subnet.subnets[0].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "public-2" {
  subnet_id      = aws_subnet.subnets[1].id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.lab-vpc.id

  tags = {
    "key" = "route table private"
  }
}

resource "aws_route" "private-natgw" {
  route_table_id         = aws_route_table.private.id
  destination_cidr_block = var.web-traffic
  nat_gateway_id         = aws_nat_gateway.omar-GW.id
}

resource "aws_route_table_association" "private-1" {
  subnet_id      = aws_subnet.subnets[2].id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-2" {
  subnet_id      = aws_subnet.subnets[3].id
  route_table_id = aws_route_table.private.id
}