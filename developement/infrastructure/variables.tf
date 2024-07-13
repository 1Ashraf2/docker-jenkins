variable "aws_region" {
  type = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnets" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}

variable "az_limit" {
  type = string
}

variable "private_subnets" {
  description = "A list of private subnet CIDR blocks"
  type        = list(string)
}

variable "azs" {
  description = "A list of availability zones"
  type        = list(string)
}

variable "environment" {
  description = "The environment name"
  type        = string
}

# variable "aws_internet_gateway" {
#   type = string
# }