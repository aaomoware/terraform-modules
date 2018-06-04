variable name                     { default = "rnd" }
variable hash_key                 { default = "LockID" }

variable tags {
  default = {
    Environment = "rnd"
    Service = "dynamodb"
  }
    type = "map"
  }
variable attributes {
  default = [ {
    name = "LockID"
    type = "S"
  }
]
type = "list"
}

variable simple { default = true }
