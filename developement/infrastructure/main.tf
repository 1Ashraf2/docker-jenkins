module "vpc" {
  source = "./modules/core"

  aws_region         = var.aws_region
  vpc_cidr           = var.vpc_cidr
  availability_zones = var.azs
  az_limit           = var.azs
  vpc_name           = var.vpc_name
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  environment        = var.environment
}