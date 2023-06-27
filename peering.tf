resource "aws_vpc_peering_connection" "requestereuwest1west2" {
    vpc_id            = aws_vpc.main.id
    peer_region   = var.peer_west2region
    peer_owner_id = var.peer_accepterwest2_id
    peer_vpc_id = var.accepter_vpc_id_west2
    auto_accept = false

    tags = {
    "Name"                            = "cross-regional-euwest1west2-vpc-peering-SECUREPROD"
  }

}
resource "aws_vpc_peering_connection_accepter" "accepterwest2euwest1" {
    vpc_peering_connection_id = "${aws_vpc_peering_connection.requestereuwest1west2.id}"
    auto_accept = false
    tags = {
    "Name"                            = "cross-regional-euwest1west2-vpc-peering-SECUREPROD"
  }

}

resource "aws_vpc_peering_connection" "requestereuwest1east1" {
    vpc_id            = aws_vpc.main.id
    peer_region   = var.peer_east1region
    peer_owner_id = var.peer_accepterwest2_id
    peer_vpc_id = var.accepter_vpc_id_east1
    auto_accept = false

    tags = {
    "Name"                            = "cross-regional-euwest1east1-vpc-peering-SECUREPROD"
  }

}
resource "aws_vpc_peering_connection_accepter" "acceptereast1euwest1" {
    vpc_peering_connection_id = "${aws_vpc_peering_connection.requestereuwest1east1.id}"
    auto_accept = false
    tags = {
    "Name"                            = "cross-regional-euwest1east1-vpc-peering-SECUREPROD"
  }

}
