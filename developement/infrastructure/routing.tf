# module "internet_gateway" {
#   source = "./modules/core"

#   vpc_cidr           = var.vpc_cidr
#   public_subnets     = var.public_subnets
#   vpc_name           = var.vpc_name
#   availability_zones = var.availability_zones
#   private_subnets    = var.private_subnets

#   environment = "Dev"
# }