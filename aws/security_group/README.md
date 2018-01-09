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
To be added. To be tested.


###### Documentation
[aws_security_group](https://www.terraform.io/docs/providers/aws/r/security_group.html)
