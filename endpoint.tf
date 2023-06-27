resource "aws_vpc_endpoint" "s3" {
  vpc_id            = aws_vpc.main.id

  service_name      = var.s3servicename
  vpc_endpoint_type = var.s3_endpoint_type

  security_group_ids  = null
  subnet_ids          = null
  policy              = null
  private_dns_enabled = null

  tags = {
    "Name"                            = "vpc_euwest1-vpce-s3"
  }
}

resource "aws_vpc_endpoint_route_table_association" "private_s3" {
  vpc_endpoint_id = aws_vpc_endpoint.s3.id
  route_table_id  = aws_route_table.private.id
}
