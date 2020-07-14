provider "aws" {
  version = "~> 2.61"
  region  = var.region
  access_key=var.access_key
  secret_key=var.secret_key
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-001"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
