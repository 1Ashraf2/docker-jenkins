output "instance_id" {
  description = "The ID of the instance"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "The public IP of the instance"
  value       = aws_instance.this.public_ip
}

output "private_ip" {
  description = "The private IP of the instance"
  value       = aws_instance.this.private_ip
}

output "security_gp_id" {
  value = aws_security_group.jenkins-sg
}