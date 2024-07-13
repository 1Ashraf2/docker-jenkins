module "ec2_instance" {
  source = "../../../infrastructure/modules/services/jenkins-master"

  ami_id                      = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = element(module.vpc.public_subnets, 0)
  associate_public_ip_address = true
  security_group_ids          = [var.security_gp_id]
  name                        = var.name
  environment                 = var.environment

  root_block_device = {
    volume_size = var.volume_size
    volume_type = var.volume_type
  }
}
