# resource "aws_eip" "eip" {
#   domain = "vpc"

#   tags = {
#     Name = "EIP-AnyCompany"
#   }

#   depends_on = [aws_internet_gateway.internet_gateway_main_a]
# }
