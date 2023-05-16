resource "aws_vpc" "ham-vpc" {
  tags = {
    Name = "minwook.kim-vpc"
    Owner = "minwook.kim"
  }
  cidr_block = var.vpccidr
}
output "vpc_id" {
    value = "${aws_vpc.ham-vpc.id}"
  }