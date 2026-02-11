# resource "aws_nat_gateway" "nat_gateway" {
#   allocation_id     = aws_eip.eip.id
#   vpc_id            = aws_vpc.main_a.id
#   availability_mode = "regional"

#   tags = {
#     Name = "NAT-AnyCompany"
#   }

#   depends_on = [aws_internet_gateway.internet_gateway_main_a]
# }
