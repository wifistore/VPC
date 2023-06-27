resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id

  route = [
{
              carrier_gateway_id         = ""
              cidr_block                 = var.accepter_cidr_stg
              destination_prefix_list_id = ""
              egress_only_gateway_id     = ""
              gateway_id                 = ""
              instance_id                = ""
              ipv6_cidr_block            = ""
              local_gateway_id           = ""
              nat_gateway_id             = ""
              network_interface_id       = ""
              transit_gateway_id         = ""
              vpc_endpoint_id            = ""
              vpc_peering_connection_id  = aws_vpc_peering_connection.requesterstg.id
            },
          {
              carrier_gateway_id         = ""
              cidr_block                 = var.accepter_cidr_prd
              destination_prefix_list_id = ""
              egress_only_gateway_id     = ""
              gateway_id                 = ""
              instance_id                = ""
              ipv6_cidr_block            = ""
              local_gateway_id           = ""
              nat_gateway_id             = ""
              network_interface_id       = ""
              transit_gateway_id         = ""
              vpc_endpoint_id            = ""
              vpc_peering_connection_id  = aws_vpc_peering_connection.requesterprd.id
            },
          {
              carrier_gateway_id         = ""
              cidr_block                 = var.accepter_cidr_west2
              destination_prefix_list_id = ""
              egress_only_gateway_id     = ""
              gateway_id                 = ""
              instance_id                = ""
              ipv6_cidr_block            = ""
              local_gateway_id           = ""
              nat_gateway_id             = ""
              network_interface_id       = ""
              transit_gateway_id         = ""
              vpc_endpoint_id            = ""
              vpc_peering_connection_id  = aws_vpc_peering_connection.requestereuwest1west2.id
            },
          {
              carrier_gateway_id         = ""
              cidr_block                 = var.accepter_cidr_east1
              destination_prefix_list_id = ""
              egress_only_gateway_id     = ""
              gateway_id                 = ""
              instance_id                = ""
              ipv6_cidr_block            = ""
              local_gateway_id           = ""
              nat_gateway_id             = ""
              network_interface_id       = ""
              transit_gateway_id         = ""
              vpc_endpoint_id            = ""
              vpc_peering_connection_id  = aws_vpc_peering_connection.requestereuwest1east1.id
            },
  ]

  tags = {
    Name = "vpc_euwest1_SECUREPROD"
  }
}

resource "aws_route_table_association" "private-eu-west-1a" {
  subnet_id      = aws_subnet.private-eu-west-1a.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-eu-west-1b" {
  subnet_id      = aws_subnet.private-eu-west-1b.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private-eu-west-1c" {
  subnet_id      = aws_subnet.private-eu-west-1c.id
  route_table_id = aws_route_table.private.id
}
