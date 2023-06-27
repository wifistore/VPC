resource "aws_subnet" "private-eu-west-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnets_cidr[0]
  availability_zone = var.azs[0]

  tags = {
    "Name"                            = "secureprod-private-eu-west-1a"
  }
}

resource "aws_subnet" "private-eu-west-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnets_cidr[1]
  availability_zone = var.azs[1]

  tags = {
    "Name"                            = "secureprod-private-eu-west-1b"
  }
}

resource "aws_subnet" "private-eu-west-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnets_cidr[2]
  availability_zone = var.azs[2]

  tags = {
    "Name"                            = "secureprod-private-eu-west-1c"
  }
}
