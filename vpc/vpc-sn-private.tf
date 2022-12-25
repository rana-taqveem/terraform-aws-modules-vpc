locals {
  private-subnets      = { for key, value in aws_subnet.private-subnets : key => value }
  private-subnets-list = [for key, value in aws_subnet.private-subnets : value]
}

# -- Public Subnet AZ-1a 
resource "aws_subnet" "private-subnets" {
  vpc_id = aws_vpc.vpc.id

  for_each          = var.private-subnets
  cidr_block        = each.value["cidr"]
  availability_zone = each.value["az"]

  tags = {
    Name = "${var.ENV}-${var.vpc-name}-private-subnet-${each.key}"
  }
}
