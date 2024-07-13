variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Associate a public IP address with the instance"
  type        = bool
  default     = true
}

variable "availability_zones" {
  description = "A list of availability zones"
  type        = list(string)
}

variable "environment" {
  description = "The environment name"
  type        = string
}

variable "security_group_id" {
  type = string
}