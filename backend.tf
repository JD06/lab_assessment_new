terraform {
  backend "s3" {
    bucket = "tf-statemanagement-bucket"
    key    = "vpc-infrastructure/terraform.tfstate"
    region = "us-east-1"

  }
}