module "allow_http" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/security_group"

  name                   = "test_allow_http"
  vpc_id                 = "vpc-yours"
  description            = "Allow all http traffic"

  ingress_to_port        = 80
  ingress_protocol       = "tcp"
  ingress_from_port      = 80
  ingress_cidr_blocks    = ["0.0.0.0/0"]

  egress_to_port         = 0
  egress_protocol        = "-1"
  egress_from_port       = 0
  egress_cidr_blocks     = ["0.0.0.0/0"]
}


module "allow_http_wth_name_prefix" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/security_group"

  name                   = "test_allow_http_wth_name_prefix"
  vpc_id                 = "vpc-yours"
  name_prefix            = true
  description            = "Allow all http traffic"

  ingress_to_port        = 443
  ingress_protocol       = "tcp"
  ingress_from_port      = 443
  ingress_cidr_blocks    = ["0.0.0.0/0"]

  egress_to_port         = 0
  egress_protocol        = "-1"
  egress_from_port       = 0
  egress_cidr_blocks     = ["0.0.0.0/0"]
}


module "allow_http_wth_self" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/security_group"

  name                   = "test_allow_http_with_self"
  vpc_id                 = "vpc-yours"
  description            = "Allow all http traffic; with self"
  ingress_self            = true

  ingress_to_port        = 443
  ingress_protocol       = "tcp"
  ingress_from_port      = 443
  ingress_cidr_blocks    = ["0.0.0.0/0"]

  egress_to_port         = 0
  egress_protocol        = "-1"
  egress_from_port       = 0
  egress_cidr_blocks     = ["0.0.0.0/0"]
}
