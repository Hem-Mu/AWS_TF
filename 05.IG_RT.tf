resource "aws_route_table" "RT_igw" {
  vpc_id = aws_vpc.ham-vpc.id

  route {
    cidr_block = "0.0.0.0/0" # target(startPoint)
    gateway_id = aws_internet_gateway.igw.id # destination
  }

  tags = {
    Name = "minwook-Pub-IGW"
  }
}
output "RT_igw_id" {
    value = "${aws_route_table.RT_igw.id}"
  }
  
resource "aws_route_table_association" "a1" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.RT_igw.id
} # igw associate
resource "aws_route_table_association" "a2" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.RT_igw.id
} # igw associate
output "RT_as_a1_id" {
     value = "${aws_route_table_association.a1.id}"
      }
output "RT_as_a2_id" {
     value = "${aws_route_table_association.a2.id}"
     }