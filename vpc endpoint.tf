resource "aws_vpc_endpoint" "vpc_endpoint_s3_anycompany_1" {
  vpc_id            = aws_vpc.main_a.id
  service_name      = "com.amazonaws.us-west-1.s3"
  vpc_endpoint_type = "Gateway"
  route_table_ids   = [aws_route_table.route_table_public_anycompany_1.id]

  tags = {
    Name = "VPC-Endpoint-AnyCompany"
  }
}
