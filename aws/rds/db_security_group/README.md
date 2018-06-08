####  DB Security Group

###### Variables
```
variable name        { default = "" }
variable tags        { default = {} type = "map" }
variable ingress     { default = [] type = "list" }
variable description { default = "" }
```

##### Outputs
```
output "id" {
  value = "${aws_db_security_group.dsg.id}"
}
output "arn" {
  value = "${aws_db_security_group.dsg.arn}"
}
```

###### Documentation
[aws_db_security_group](https://www.terraform.io/docs/providers/aws/r/db_security_group.html)
