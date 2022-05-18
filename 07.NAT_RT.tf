resource "aws_route_table" "RT_nat" {
  vpc_id = aws_vpc.ham-vpc.id

  route {
    cidr_block = "0.0.0.0/0" # target(startPoint)
    gateway_id = aws_nat_gateway.nat.id # destination
  }

  tags = {
    Name = "Pri-NAT"
  }
}
output "RT_nat_id" {
    value = "${aws_route_table.RT_nat.id}"
  }

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.pri1.id
  route_table_id = aws_route_table.RT_nat.id
} # nat associate
output "RT_as_b_id" {
     value = "${aws_route_table_association.b.id}"
   }