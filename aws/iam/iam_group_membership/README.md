#### IAM Group Membership


###### Variables
```
variable name   {}
variable users  { default = [] type = "list" }
variable group  {}
```

##### Outputs
```
output "name" {
  value = "${aws_iam_group_membership.igm.*.name}"
}
output "users" {
  value = "${aws_iam_group_membership.igm.*.users}"
}
output "group" {
  value = "${aws_iam_group_membership.igm.*.group}"
}
```

###### Documentation
[ aws_iam_group_membership](https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html)
