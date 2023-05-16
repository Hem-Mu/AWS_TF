resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.ham-vpc.id

  tags = {
    Name = "minwook.kim-IGW"
    Owner = "minwook.kim"
  }
}
output "igw_id" {
    value = "${aws_internet_gateway.igw.id}"
  }