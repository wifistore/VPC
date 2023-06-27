resource "aws_instance" "instance" {
  ami                         =  var.amiid
  instance_type               = var.instancetype
  key_name                    = var.keyname
  vpc_security_group_ids      = [aws_security_group.sg.id]
  subnet_id                   = aws_subnet.private-eu-west-1a.id

  associate_public_ip_address = false
  root_block_device {
    volume_size           = 50
    delete_on_termination = true
    encrypted = true
  }

  tags = {
    Name = "ec2jumpProd"
  }
}

resource "aws_security_group" "sg" {
  name        = "ec2jumpProd"
  description = "Restrictions for ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = aws_vpc.main.id

  tags = {
    Name = "ec2jumpProd"
  }
}

output "instance-private-ip" {
  value = aws_instance.instance.private_ip
}
