# VPC-AnyCompany-1

# VPC

resource "aws_vpc" "main_a" {
  cidr_block = "172.41.0.0/16"

  tags = {
    Name = "VPC-AnyCompany-1"
  }
}

# Association VPC x Route Table

resource "aws_main_route_table_association" "association_route_table_public" {
  vpc_id         = aws_vpc.main_a.id
  route_table_id = aws_route_table.route_table_public.id
}

# Subnets

resource "aws_subnet" "main_a" {
  vpc_id               = aws_vpc.main_a.id
  cidr_block           = "172.41.0.0/20"
  availability_zone_id = "usw1-az3"

  tags = {
    Name = "Subnet-A"
    VPC  = "VPC-AnyCompany-1"
  }
}

resource "aws_subnet" "main_b" {
  vpc_id               = aws_vpc.main_a.id
  cidr_block           = "172.41.16.0/20"
  availability_zone_id = "usw1-az1"

  tags = {
    Name = "Subnet-B"
    VPC  = "VPC-AnyCompany-1"
  }
}

# Route Tables

resource "aws_route_table" "route_table_public" {
  vpc_id = aws_vpc.main_a.id

  tags = {
    Name = "RTB-Public"
  }
}

resource "aws_route_table" "route_table_private" {
  vpc_id = aws_vpc.main_a.id

  tags = {
    Name = "RTB-Private"
  }
}

# Associations Subnet x Route Table

resource "aws_route_table_association" "route_table_association_public" {
  subnet_id      = aws_subnet.main_a.id
  route_table_id = aws_route_table.route_table_public.id
}

resource "aws_route_table_association" "route_table_association_private" {
  subnet_id      = aws_subnet.main_b.id
  route_table_id = aws_route_table.route_table_private.id
}

# VPC-AnyCompany-2

# resource "aws_vpc" "main_b" {
#   cidr_block = "172.51.0.0/16"

#   tags = {
#     Name = "VPC-AnyCompany-2"
#   }
# }
