####  Redshift Cluster Subnet Group


###### Variables
```
variable env         { default = ""}
variable name        { default = "" }
variable subnet_ids  { default = [] type = "list" }
variable description { default = "" }
```

##### Outputs
```
output "rsg_id" {
  value = "${aws_redshift_subnet_group.rsg.id}"
}
```

###### Documentation
[aws_redshift_subnet_group](https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html)
