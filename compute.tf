// Create aws_ami filter to pick up the ami available in your region
data "aws_ami" "amazon-linux-2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

// Configure the EC2 instance in a public subnet
resource "aws_instance" "ec2_jenkins" {
  ami                         = data.aws_ami.amazon-linux-2.id
  associate_public_ip_address = "true"
  instance_type               = "t2.micro"
  key_name                    = "aws_key"
  subnet_id                   = aws_subnet.public-sub-1.id
  vpc_security_group_ids      = [aws_security_group.jenkins-sg.id]

  tags = {
    "Name" = "EC2-Jenkins"
  }
}

// Print out EC2 instance public ip
output "instance_ip" {
  description = "The public ip for ssh access"
  value       = aws_instance.ec2_jenkins.public_ip
}


// Connect to EC2 with SSH Keys
resource "aws_key_pair" "aws_key" {
  key_name   = "aws_key"
  public_key = #"ssh-rsa .. inserter public key here"..#
}


