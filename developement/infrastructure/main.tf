provider "aws" {
  region = "eu-west-1"
}

module "vpc" {
  source = "./modules/core"

  vpc_cidr           = "10.0.0.0/16"
  vpc_name           = "Developement-VPC"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets    = ["10.0.3.0/24", "10.0.4.0/24"]
  availability_zones = ["eu-west-1a", "eu-west-1b"]
  environment        = "Dev"
}
