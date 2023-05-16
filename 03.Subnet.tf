resource "aws_subnet" "pub" {
  count = 2

  vpc_id     = aws_vpc.ham-vpc.id
  availability_zone = var.zones[count.index] # ap-norteast-2a, 2c
  cidr_block = var.pubcidr[count.index]

  tags = {
    Name = "minwook.kim-pubSub-${count.index+1}"
    Owner = "minwook.kim"
  }
}

resource "aws_subnet" "pri" {
  count = 2

  vpc_id     = aws_vpc.ham-vpc.id
  availability_zone = var.zones[count.index] # ap-norteast-2a, 2c
  cidr_block = var.pricidr[count.index]

  tags = {
    Name = "minwook.kim-priSub-${count.index+1}"
    Owner = "minwook.kim"
  }
}

output "pub1_id" {
    value = "${aws_subnet.pub[0].id}"
  }
output "pub2_id" {
    value = "${aws_subnet.pub[1].id}"
  }

output "pri1_id" {
    value = "${aws_subnet.pri[0].id}"
  }
output "pri2_id" {
    value = "${aws_subnet.pri[1].id}"
  }

output "pub_all" {
  value = "${aws_subnet.pub.*.id}"
}
output "pri_all" {
  value = "${aws_subnet.pri.*.id}"
}