
locals {
  eips = [for key, value in aws_eip.eip : value]
}

resource "aws_eip" "eip" {
  for_each   = aws_subnet.public-subnets
  vpc        = true
  depends_on = [aws_internet_gateway.vpc-igw]

  tags = {
    "Name" = "eip-${each.value.availability_zone}"
  }
}
