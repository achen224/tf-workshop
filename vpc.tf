module "vpc" {
  source  = "104corp/vpc/aws"
  version = "1.1.0"

  name            = "hub-${var.env}"
  cidr            = "${var.vpc_hub_cidr}"
  azs             = ["${var.vpc_azs}"]
  public_subnets  = ["${var.vpc_public_subnets}"]
  private_subnets = ["${var.vpc_private_subnets}"]

  # endpoint
  enable_s3_endpoint       = true
  enable_dynamodb_endpoint = true

  tags = "${var.tags}"
}

# module "vpc" {
#   source  = "104corp/vpc/aws"
#   version = "1.1.0"


#   name            = "tf-workshop-hub"
#   cidr            = "10.0.0.0/16"
#   azs             = ["us-west-2a", "us-west-2c"]
#   public_subnets  = ["10.0.128.0/20", "10.0.144.0/20"]
#   private_subnets = ["10.0.0.0/19", "10.0.32.0/19"]


#   # endpoint
#   enable_s3_endpoint       = true
#   enable_dynamodb_endpoint = true


#   tags = {
#     Terraform   = "true"
#     Environment = "workshop"
#     Account     = "TF"
#   }
# }

