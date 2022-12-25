# -- Public Subnet AZ-1a 
locals {
  public-subnets = { for key, value in aws_subnet.public-subnets : key => value }
}


resource "aws_subnet" "public-subnets" {
  vpc_id = aws_vpc.vpc.id

  for_each          = var.public-subnets
  cidr_block        = each.value["cidr"]
  availability_zone = each.value["az"]

  // ToDo pass env vaiables
  tags = {
    Name = "${var.ENV}-${var.vpc-name}-public-subnet-${each.key}"
  }
}


