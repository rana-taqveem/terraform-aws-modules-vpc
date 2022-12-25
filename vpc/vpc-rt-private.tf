resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.vpc.id
  route {
      cidr_block = var.vpc-public-cidr
      gateway_id = local.nat-gateways[0].id
  }
  tags = {
    Name = "${var.ENV}-vpc-${var.vpc-name}-${var.vpc-private-rt-name}"
  }
}

resource "aws_route_table_association" "private-rt-association" {
  count          = length(local.private-subnets-list)
  subnet_id      = element(local.private-subnets-list.*.id, count.index)
  route_table_id = element(aws_route_table.private-rt.*.id, count.index)
}
