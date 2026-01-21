# VPC-AnyCompany-1

resource "aws_vpc" "main_a" {
  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "VPC-AnyCompany-1"
  }
}

resource "aws_subnet" "main_a" {
  vpc_id               = aws_vpc.main_a.id
  cidr_block           = "172.31.0.0/20"
  availability_zone_id = "usw1-az3"

  tags = {
    Name = "Subnet-A"
    VPC  = "VPC-AnyCompany-1"
  }
}

resource "aws_subnet" "main_b" {
  vpc_id               = aws_vpc.main_a.id
  cidr_block           = "172.31.16.0/20"
  availability_zone_id = "usw1-az1"

  tags = {
    Name = "Subnet-B"
    VPC  = "VPC-AnyCompany-1"
  }
}

# VPC-AnyCompany-2

resource "aws_vpc" "main_b" {
  cidr_block = "172.31.0.0/16"

  tags = {
    Name = "VPC-AnyCompany-2"
  }
}
