variable "environment" {
  description = "The environment name"
  type        = string
}

variable "availability_zones" {
  description = "A list of availability zones"
  type        = list(string)
}

variable "public_subnets" {
  description = "A list of public subnet CIDR blocks"
  type        = list(string)
}

variable "security_gp_id" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
}

variable "key_name" {
  type = string
}

variable "volume_type" {
  type = string
}

variable "volume_size" {
  type = string
}

variable "name" {
  type = string
}