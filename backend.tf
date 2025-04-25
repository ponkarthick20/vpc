terraform {
  backend "s3" {
    bucket         = "STATE_FILE_BUCKET_NAME"
    key            = "vpc/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "my-tf-lock"
    encrypt        = true
  }
}
