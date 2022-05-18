resource "aws_route_table" "RT_igw" {
  vpc_id = aws_vpc.ham-vpc.id

  route {
    cidr_block = "0.0.0.0/0" # target(startPoint)
    gateway_id = aws_internet_gateway.igw.id # destination
  }

  tags = {
    Name = "Pub-IGW"
  }
}
output "RT_igw_id" {
    value = "${aws_route_table.RT_igw.id}"
  }
  
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.RT_igw.id
} # igw associate
output "RT_as_a_id" {
     value = "${aws_route_table_association.a.id}"
   }