
terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket-for-ecs"
    key            = "staging/terraform.tfstate"
    region         = "ap-northeast-1"
    dynamodb_table = "terraform-state-lock-for-ecs"
    encrypt        = true
  }
}
