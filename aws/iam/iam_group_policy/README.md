#### IAM Group Policy


###### Variables
```
variable names    { default = [] type = "list" }
variable groups   { default = {} type = "map" }
variable policies { default = {} type = "map" }
```

##### Outputs
```
output "id" {
  value = "${element(concat(aws_iam_user_policy.iup.*.id,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_iam_user_policy.iup.*.id,list("")),0)}"
}

output "id_prefix" {
  value = "${element(concat(aws_iam_user_policy.iup_prefix.*.id,list("")),0)}"
}
output "name_prefix" {
  value = "${element(concat(aws_iam_user_policy.iup_prefix.*.id,list("")),0)}"
}
```

###### Documentation
[aws_iam_user_policy](https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html)
