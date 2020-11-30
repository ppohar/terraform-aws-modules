#############################################################################
# RESOURCES
############################################################################# 

# Create the peering connection

resource "aws_vpc_peering_connection" "peer" {
  vpc_id        = var.source_vpc_id
  peer_vpc_id   = var.destination_vpc_id
  peer_owner_id = data.aws_caller_identity.peer.account_id
  peer_region   = var.region
  auto_accept   = false
}

resource "aws_vpc_peering_connection_accepter" "peer" {
  provider                  = aws.peer
  vpc_peering_connection_id = aws_vpc_peering_connection.peer.id
  auto_accept               = true
}
