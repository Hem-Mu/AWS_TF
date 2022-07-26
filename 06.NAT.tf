resource "aws_eip" "nat_ip" {
    tags = {
    Name = "minwook-NAT_ip"
  }
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.pub[0].id #pub1

  tags = {
    Name = "hamster-NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}