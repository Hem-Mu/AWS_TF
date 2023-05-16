resource "aws_eip" "nat_ip" {
    tags = {
    Name = "minwook.kim-NAT-ip"
    Owner = "minwook.kim"
  }
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_ip.id
  subnet_id     = aws_subnet.pub[0].id #pub1

  tags = {
    Name = "minwook.kim-NAT"
    Owner = "minwook.kim"
  }

  depends_on = [aws_internet_gateway.igw]
}
