variable env                 { default = "" }
variable vpc_id              { default = "" }
variable auto_accept         { default = true }
variable peer_vpc_id         { default = "" }
variable peer_owner_id       { default = "" }
variable accepter_requester  {
  default = {
    accepter = false
    requester = false
    }
  type = "map"
}
