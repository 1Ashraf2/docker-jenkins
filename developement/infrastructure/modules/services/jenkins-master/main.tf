resource "aws_instance" "jenkins" {
 ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = data.aws_vpc.main.id

  associate_public_ip_address = true

  tags = {
      Name = "${var.environment}-Jenkins-Controller"
    } 
}
# resource "aws_launch_configuration" "web_server" {
#   instance_type   = var.instance_type
#   #key_name       = "ashraf-test-key"
#   name            = "Apache-Server"
#   security_groups = [aws_security_group.jenkins-sg]

#   user_data = <<-EOF
#    #!/bin/bash

# # Update the package index
# sudo apt-get update -y
# sudo apt-get upgrade -y

# # Install Java OpenJDK 17
# sudo apt-get install -y openjdk-17-jdk

# # Import the Jenkins GPG key
# curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
# /usr/share/keyrings/jenkins-keyring.asc > /dev/null

# # Add the Jenkins repository to the apt sources list
# echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
# https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
# /etc/apt/sources.list.d/jenkins.list > /dev/null

# # Update the apt package index
# sudo apt-get update

# # Install Jenkins
# sudo apt-get install -y jenkins

# # Start the Jenkins service
# sudo systemctl start jenkins

# # Enable the Jenkins service to start at boot time
# sudo systemctl enable jenkins
# EOF
#   image_id  = var.aws_ami
# }

# resource "aws_security_group" "allow_http" {
#   vpc_id = data.terraform_statefile.development_infrastructure.outputs.vpc_id

#   ingress {
#     description = "http"
#     from_port   = var.http_port
#     to_port     = var.http_port
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "Web-Server-SG"
#   }
# }