#### Connection of Direct Connect


###### Variables
```
variable name {}
variable tags { default = {} type = "map" }
variable location {}
variable bandwidth {}
```

##### Outputs
```
output "id" {
  value = "${aws_dx_connection.dcx.id}"
}
output "arn" {
  value = "${aws_dx_connection.dcx.arn}"
}
```

###### Documentation
[aws_dx_connection](https://www.terraform.io/docs/providers/aws/r/dx_connection.html)
