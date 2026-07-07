terraform {
  backend "s3" {
    bucket         = "terraform-aws-env-state"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-aws-env-locks"
    encrypt        = true
  }
}
