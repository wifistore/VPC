# VPC
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr

  tags = {
    Name = "vpc_euwest1_SECUREPROD"
  }
  enable_dns_hostnames = false
  enable_dns_support   = true
}
