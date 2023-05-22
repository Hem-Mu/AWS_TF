# terraform {
#   backend "local" {
#     path = "./terraform.tfstate"
#   } # backend 변경 전 destroy 권장
# } 

terraform {
  backend "s3" {
    bucket         = "minwook-terraform-state-bucket" # bucket name
    key            = "terraform.tfstate" # tfstate file save path
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock" # DDB name.
  }
}