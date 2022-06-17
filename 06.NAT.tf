resource "aws_eip" "nat_ip" {
    tags = {
    Name = "NAT_ip-minwook"
  }
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.pub1.id

  tags = {
    Name = "NAT_minwook"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.igw]
}