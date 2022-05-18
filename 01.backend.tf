terraform {
  backend "local" {
    path = "C:/Users/김햄무/Desktop/terraform/Aws/@init_network/terraform.tfstate"
  } # backend 변경 전 destroy 권장함
} 

/* terraform {

  backend "s3" {
    bucket         = "art-id-apnortheast2-tfstate" # 고유한 버킷 이름 사용
    key            = "terrafom/terraform.tfstate" # 원하는 객체 명 사용
    region         = "ap-northeast-3"
    encrypt        = true
    dynamodb_table = "terraform-lock" # 생성 할 DynamoDB 이름
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