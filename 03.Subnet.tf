
resource "aws_subnet" "pub1" {
  vpc_id     = aws_vpc.ham-vpc.id
  availability_zone = "ap-northeast-2a"
  cidr_block = "10.177.10.0/24"

  tags = {
    Name = "minwook-pub1"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}
resource "aws_subnet" "pub2" {
  vpc_id     = aws_vpc.ham-vpc.id
  availability_zone = "ap-northeast-2c"
  cidr_block = "10.177.20.0/24"

  tags = {
    Name = "minwook-pub2"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}
resource "aws_subnet" "pri1" {
  vpc_id     = aws_vpc.ham-vpc.id
  availability_zone = "ap-northeast-2a"
  cidr_block = "10.177.100.0/24"

  tags = {
    Name = "minwook-pri1"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}
resource "aws_subnet" "pri2" {
  vpc_id     = aws_vpc.ham-vpc.id
  availability_zone = "ap-northeast-2c"
  cidr_block = "10.177.200.0/24"

  tags = {
    Name = "minwook-pri2"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb"    = 1
  }
}

output "pub1_id" {
    value = "${aws_subnet.pub1.id}"
  }
output "pub2_id" {
    value = "${aws_subnet.pub2.id}"
  }
output "pri1_id" {
    value = "${aws_subnet.pri1.id}"
  }
output "pri2_id" {
    value = "${aws_subnet.pri2.id}"
  }