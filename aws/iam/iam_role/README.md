#### IAM Role


###### Variables
```
variable name                  { default = [] type = "list" }
variable path                  { default = "/" }
variable description           { default = {} type = "map" }
variable assume_role_policy    { default = {} type = "map" }
variable max_session_duration  { default = 12 }
variable force_detach_policies { default = true }
```

##### Outputs
```
output "arn" {
  value = "${element(concant(aws_iam_role.ir.*.arn,list("")),0)}"
}
output "unique_id" {
  value = "${element(concant(aws_iam_role.ir.*.unique_id,list("")),0)}"
}
output "name" {
  value = "${element(concant(aws_iam_role.ir.*.name = "",list("")),0)}"
}
output "create_date" {
  value = "${element(concant(aws_iam_role.ir.*.create_date,list("")),0)}"
}
output "description" {
  value = "${element(concant(aws_iam_role.ir.*.description,list("")),0)}"
}
```

###### Documentation
[aws_iam_role](https://www.terraform.io/docs/providers/aws/d/iam_role.html)
