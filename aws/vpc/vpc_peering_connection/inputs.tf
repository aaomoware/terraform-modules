variable tags                { default = {} type = "map" }
variable vpc_id              { default = "" }
variable peer_region         { default = "" }
variable auto_accept         { default = false }
variable peer_vpc_id         { default = "" }
variable peer_owner_id       { default = "" }
variable accepter_requester  {
  default = {
    accepter = false
    requester = false
  }
  type = "map"
}
