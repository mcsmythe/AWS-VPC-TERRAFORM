# Create Security Group for Jenkins
# terraform aws create security group
resource "aws_security_group" "jenkins-sg" {
  name        = "Jenkins Security Group"
  description = "Enable HTTP/HTTPS/SSH/Docker-Jenkins access on Port 80/443/22/8080/5000"
  vpc_id      = aws_vpc.vpc.id


  ingress {
    description      = "SSH Access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups  = []
    cidr_blocks      = ["67.84.73.100/32"]
  }

  ingress {
    description      = "HTTP Access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "HTTPS Access"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  
  ingress {
    description      = "Jenkins Access"
    from_port        = 8080
    to_port          = 8080
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Docker Host Port Access for Jenkins"
    from_port        = 50000
    to_port          = 50000
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags   = {
    Name = "Jenkins Security Group"
  }
}

