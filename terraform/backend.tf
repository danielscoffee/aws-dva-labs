terraform {
  backend "s3" {
    bucket         = "aws-dva-labs-tfstate-721094557902-us-east-1"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
