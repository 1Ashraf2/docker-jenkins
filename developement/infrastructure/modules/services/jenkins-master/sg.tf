# create security group
resource "aws_security_group" "jenkins-sg" {
  name        = "jenkins-sg"
  description = "Allow SSH and HTTP Traffic"
  vpc_id      = aws_vpc.main.id

 # allow traffic from port 22
  ingress {
    description = "incoming SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # Access the EC2 instance on port 8080 (Jenkins Dashboard)
  ingress {
    description = "incoming HTTP traffic"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "incoming 443"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


 # Jenkins EC2 instance to being able to talk to the internet

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    "Name" = "jenkins-sg"
  }
}