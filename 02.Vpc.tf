resource "aws_vpc" "ham-vpc" {
  tags = {
    Name = "hamster-vpc"
  }
  cidr_block = var.vpccidr
}
output "vpc_id" {
    value = "${aws_vpc.ham-vpc.id}"
  }