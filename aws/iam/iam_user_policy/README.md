#### IAM User Policy


###### Variables
```
variable name           { default = "" }
variable user           { default = "" }
variable prefix         { default = false }
variable policy         { default = "" }
variable name_prefix    { default = "" }
```

##### Outputs
```
output "iam_user_id" {
  value = "${aws_iam_user_policy.user_name.id}"
}
output "iam_user_name" {
  value = "${aws_iam_user_policy.user_name.name}"
}

output "iam_user_prefix_id" {
  value = "${aws_iam_user_policy.user_prefix.id}"
}
output "iam_user_prefix_name" {
  value = "${aws_iam_user_policy.user_prefix.name}"
}
```

###### Documentation
[aws_iam_user_policy](https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html)
