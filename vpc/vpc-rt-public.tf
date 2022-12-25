resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = var.vpc-public-cidr
    gateway_id = aws_internet_gateway.vpc-igw.id
  }
  tags = {
    Name = "${var.ENV}-vpc-${var.vpc-name}-${var.vpc-public-rt-name}"
  }
}

resource "aws_route_table_association" "public-rt-association" {
  for_each       = aws_subnet.public-subnets
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public-rt.id
}
