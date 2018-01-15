#### IAM Group


###### Variables
```
#-- groups & policies

variable "iam_group_path"                    { default = {} type = "map" }
variable "iam_group_names"                   { default = [] type = "list" }

variable "iam_group_policy_names"            { default = [] type = "list" }
variable "iam_group_policy_policy"           { default = {} type = "map" }
variable "iam_group_policy_groups"           { default = {} type = "map" }
variable "iam_group_policy_attachment_arn"   { default = [] type = "list" }
variable "iam_group_policy_attachment_group" { default = {} type = "map" }
```

##### Outputs
```
#- Group
output "iam_group_name" {
  value = "${aws_iam_group.iam_group.*.name}"
}

output "iam_group_policy_name" {
  value = "${aws_iam_group_policy.iam_group_policy.*.name}"
}
```

###### Documentation
[aws_iam_group](https://www.terraform.io/docs/providers/aws/d/iam_group.html)
