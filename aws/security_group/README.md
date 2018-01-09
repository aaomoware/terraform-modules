#### aws_security_group


###### Variables
All variables are assigned defaults.
````
variable name                     { default = "" }
variable vpc_id                   { default = "" }
variable description              { default = "" }

variable name_prefix              { default = false }
variable egress_self              { default = false }
variable ingress_self             { default = false }
variable revoke_rules_on_delete   { default = false }

variable ingress_to_port          { default = "" }
variable ingress_protocol         { default = "" }
variable ingress_from_port        { default = "" }
variable ingress_cidr_blocks      { default = [] type = "list" }
variable ingress_security_groups  { default = [] type = "list" }
variable ingress_ipv6_cidr_blocks { default = [] type = "list" }

variable egress_to_port           { default = "" }
variable egress_protocol          { default = "" }
variable egress_from_port         { default = "" }
variable egress_cidr_blocks       { default = [] type = "list" }
variable egress_security_groups   { default = [] type = "list" }
variable egress_prefix_list_ids   { default = [] type = "list" }
variable egress_ipv6_cidr_blocks  { default = [] type = "list" }
````

###### Examples:
```
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
```


###### Documentation
[aws_security_group](https://www.terraform.io/docs/providers/aws/r/security_group.html)
