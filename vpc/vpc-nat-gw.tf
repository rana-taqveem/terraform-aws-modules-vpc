# -- Public Subnet AZ-1a 
locals {
  nat-gateways = [for key, value in aws_nat_gateway.nat-gateways : value]


  # nat-gateways-keys = { for key in aws_nat_gateway.nat-gateways : key => key}
}

resource "aws_nat_gateway" "nat-gateways" {
  for_each          = aws_subnet.public-subnets
  allocation_id     = aws_eip.eip[each.key].id
  connectivity_type = "public"
  subnet_id         = each.value.id
  tags = {
    Name = "${var.ENV}-${var.vpc-name}-sb-${each.value.id}-ngw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.vpc-igw]
}