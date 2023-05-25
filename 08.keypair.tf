resource "aws_key_pair" "keypair" { 
  key_name = "minwook.kim-keypair" # keypair name
  public_key = file("./id_rsa.pub") # keypair public key 지정

  tags = {
    Owner = "minwook.kim"
  }
}


output "keypair_id" {
  value = "${aws_key_pair.keypair.id}"
}