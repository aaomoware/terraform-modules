output "vpc_p_con_acptr_id" {
  value = "${aws_vpc_peering_connection_accepter.vpc_p_con_acptr.id}"
}
output "vpc_p_con_acptr_vpc_id" {
  value = "${aws_vpc_peering_connection_accepter.vpc_p_con_acptr.vpc_id}"
}
output "vpc_p_con_acptr_accepter" {
  value = "${aws_vpc_peering_connection_accepter.vpc_p_con_acptr.accepter}"
}
output "vpc_p_con_acptr_requester" {
  value = "${aws_vpc_peering_connection_accepter.vpc_p_con_acptr.requester}"
}
output "vpc_p_con_acptr_peer_vpc_id" {
  value = "${aws_vpc_peering_connection_accepter.vpc_p_con_acptr.peer_vpc_id}"
}
output "vpc_p_con_acptr_peer_owner_id" {
  value = "${aws_vpc_peering_connection_accepter.vpc_p_con_acptr.peer_owner_id}"
}
output "vpc_p_con_acptr_accept_status" {
  value = "${aws_vpc_peering_connection_accepter.vpc_p_con_acptr.accept_status}"
}
