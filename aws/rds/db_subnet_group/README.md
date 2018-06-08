####  DB Subnet Group

###### Variables
```
variable tags        { default = {} type = "map" }
variable name        { default = "" }
variable subnet_ids  { default = [] type = "list" }
variable description { default = "" }
```

##### Outputs
```
output "id" {
  value = "${aws_db_subnet_group.dsg.id}"
}
output "arn" {
  value = "${aws_db_subnet_group.dsg.arn}"
}
```

###### Documentation
[aws_db_subnet_group](https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html)
