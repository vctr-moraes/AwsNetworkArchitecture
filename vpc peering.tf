resource "aws_vpc_peering_connection" "vpc_peering" {
  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = aws_vpc.main_b.id
  vpc_id        = aws_vpc.main_a.id
  auto_accept   = true

  tags = {
    Name = "VPC-Peering-AnyCompany"
  }
}

variable "peer_owner_id" {
  description = "The AWS account ID of the owner of the peer VPC."
  type        = string
  default     = "<aws_account_id>"
}
