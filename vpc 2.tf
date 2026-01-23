# VPC

resource "aws_vpc" "main_b" {
  cidr_block = "172.51.0.0/16"

  tags = {
    Name = "VPC-AnyCompany-2"
  }
}

# Route Tables

resource "aws_route_table" "route_table_public_anycompany_2" {
  vpc_id = aws_vpc.main_b.id

  tags = {
    Name = "RTB-Public-AnyCompany-2"
  }
}

# Association VPC x Route Table

resource "aws_main_route_table_association" "route_table_public_anycompany_2" {
  vpc_id         = aws_vpc.main_b.id
  route_table_id = aws_route_table.route_table_public_anycompany_2.id
}
