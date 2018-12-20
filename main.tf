terraform {
  backend "s3" {
    bucket         = "tf-workshop"
    dynamodb_table = "tf-workshop"
    key            = "main/terraform.tfstate"
    region         = "us-west-2"
  }
}

provider "aws" {
  region = "us-west-2"
}
