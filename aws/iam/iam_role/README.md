#### IAM Role


###### Variables
```
#-- roles & policies

variable "iam_role_name"                     { default = [] type = "list" }
variable "iam_role_description"              { default = {} type = "map" }
variable "iam_role_assume_role_policy"       { default = {} type = "map" }
variable "iam_role_force_detach_policies"    { default = true }

variable "iam_role_policy_name"              { default = [] type = "list" }
variable "iam_role_policy_role"              { default = {} type = "map" }
variable "iam_role_policy_policy"            { default = {} type = "map" }
```

##### Outputs
```
#- Role Outputs
output "iam_role_name" {
  value = "${aws_iam_role.iam_role.*.name}"
}

output "iam_role_arn" {
  value = "${aws_iam_role.iam_role.*.arn}"
}

output "iam_role_unique_id" {
  value = "${aws_iam_role.iam_role.*.unique_id}"
}

output "iam_role_policy_id" {
  value = "${aws_iam_role_policy.iam_role_policy.*.id}"
}

output "iam_role_policy_name" {
  value = "${aws_iam_role_policy.iam_role_policy.*.name}"
}

output "iam_role_policy_policy" {
  value = "${aws_iam_role_policy.iam_role_policy.*.policy}"
}
```

###### Documentation
[aws_iam_role](https://www.terraform.io/docs/providers/aws/d/iam_role.html)
