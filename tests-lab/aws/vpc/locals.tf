locals {
  basic_vpc_tags = {
    Product     = "basic"
    Environment = "testing"
  }
}

locals {
  dns_support_vpc_tags = {
    Product     = "dns_support"
    Environment = "staging"
  }
}
