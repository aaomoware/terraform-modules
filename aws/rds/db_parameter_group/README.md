####  DB Parameter Group

###### Variables
```
variable name        { default = "" }
variable family      { default = "" }
variable description { default = "" }

variable tags        { default = {} type = "map" }
variable parameter   { default = [] type = "list" }
```

##### Outputs
```
output "id" {
  value = "${aws_db_parameter_group.dpg.id}"
}
output "arn" {
  value = "${aws_db_parameter_group.dpg.arn}"
}
```

###### Documentation
[aws_db_parameter_group](https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html)
