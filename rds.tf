resource "aws_db_subnet_group" "rds_all_subnets_secureprod" {

     name = "rds_all_subnets_secureprod"
     subnet_ids = [aws_subnet.private-eu-west-1a.id, aws_subnet.private-eu-west-1b.id, aws_subnet.private-eu-west-1c.id]

     tags = {
          Name = "rds_all_subnets_secureprod"
     }
}

resource "aws_security_group" "aurora-epc-prod" {
  name        = "aurora-epc-prod"
  description = "aurora-epc-prod"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
    description = ""
  }

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["xxx.xxx.xxx.0/24"]
    description = "YYY"
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [xxx.xxx.xxx.xxx/32"]
    description = ""
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["uuu.uuu.uuu.0/22"]
    description = ""
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["uuu.uuu.uuu.0/22"]
    description = ""
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = [yyy.yyy.yyy.yyy/32"]
    description = ""
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["zzz.zzz.zzz.zzz/32"]
    description = ""
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["aaa.aaa.aaa.0/19"]
    description = ""
  }
  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["hhh.hhh.hhh.0/19"]
    description = ""
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  vpc_id = aws_vpc.main.id

  tags = {
    Name = "aurora-epc-prod",
    securityGroupType = "dataTierSecurityGroup"
  }
}

