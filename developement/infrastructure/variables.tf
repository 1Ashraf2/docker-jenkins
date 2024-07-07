variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default = "2"
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default = "Developement-VPC"
}

variable "public_subnets" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
  default = [ "2" ]
}

variable "private_subnets" {
  description = "A list of private subnet CIDR blocks"
  type        = list(string)
  default = [ "2" ]
}

variable "availability_zones" {
  description = "A list of availability zones"
  type        = list(string)
  default = [ "2" ]
}

variable "environment" {
  description = "The environment name"
  type        = string
  default = "dev"
}