resource "aws_vpc" "ham-vpc" {
  tags = {
    Name = "hamster-vpc"
  }
  cidr_block = "10.177.0.0/16"
}
output "vpc_id" {
    value = "${aws_vpc.ham-vpc.id}"
  }