resource "aws_vpc_peering_connection" "requesterstg" {
    vpc_id            = aws_vpc.main.id
    peer_region   = var.peer_region
    peer_owner_id = var.peer_accepter_id
    peer_vpc_id = var.accepter_vpc_id_stg
    auto_accept = false

    tags = {
    "Name"                            = "epc-stg-euwest1-vpc-peering-SECUREPROD"
  }

}
resource "aws_vpc_peering_connection_accepter" "accepterstg" {
    vpc_peering_connection_id = "${aws_vpc_peering_connection.requesterstg.id}"
    auto_accept = false
    tags = {
    "Name"                            = "epc-stg-euwest1-vpc-peering-SECUREPROD"
  }

}

resource "aws_vpc_peering_connection" "requesterprd" {
    vpc_id            = aws_vpc.main.id
    peer_region   = var.peer_region
    peer_owner_id = var.peer_accepter_id
    peer_vpc_id = var.accepter_vpc_id_prd
    auto_accept = false

    tags = {
    "Name"                            = "epc-prd-euwest1-vpc-peering-SECUREPROD"
  }

}
resource "aws_vpc_peering_connection_accepter" "accepterprd" {
    vpc_peering_connection_id = "${aws_vpc_peering_connection.requesterprd.id}"
    auto_accept = false
    tags = {
    "Name"                            = "epc-prd-euwest1-vpc-peering-SECUREPROD"
  }

}
