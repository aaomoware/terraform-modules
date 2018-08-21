variable tags                      { default = {} type = "map" }
variable auto_accept               { default = false }
variable vpc_peering_connection_id { default = "" }
variable accepter_requester  {
  default = {
    accepter = false
    requester = false
  }
  type = "map"
}
