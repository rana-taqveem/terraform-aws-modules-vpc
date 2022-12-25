
resource "aws_security_group" "public-sg" {
  name        = "public-sg"
  description = "public security group with SSH enabled"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    cidr_blocks = [var.sg-http-entry.cidr]
    from_port   = var.sg-http-entry.portStart
    protocol    = var.sg-http-entry.protocol
    to_port     = var.sg-http-entry.portEnd
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.vpc-cidr]
  }

  tags = {
    Name = "${var.ENV}-public-SG-${var.sg-public-name}"
  }
}

