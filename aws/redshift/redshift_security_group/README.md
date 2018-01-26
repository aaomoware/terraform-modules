####  Redshift Cluster Security Group


###### Variables
```
variable name                     { default = "" }
variable description              { default = "" }

variable cidr                     { default = "" }
variable security_group_name      { default = "" }
variable security_group_owner_id  { default = "" }
```

##### Outputs
```
output "rsg_id" {
  value = "${aws_redshift_security_group.rsg.id}"
}
```

###### Documentation
[aws_redshift_security_group](https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html)
