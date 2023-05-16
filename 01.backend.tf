terraform {
  backend "local" {
    path = "./terraform.tfstate"
  } # backend 변경 전 destroy 권장
} 

/* terraform {

  backend "s3" {
    bucket         = "art-id-apnortheast2-tfstate" # bucket name
    key            = "terrafom/terraform.tfstate" # tfstate file object name
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock" # DDB name
  }
} */

/* resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-lock"
  hash_key       = "LockID"
  billing_mode   = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
} */