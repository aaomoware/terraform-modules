#### IAM Policy


###### Variables
```
variable name        { default = "" }
variable path        { default = "/" }
variable policy      { default = "" }
variable description { default = "" }
```

##### Outputs
```
output "id" {
  value = "${aws_iam_policy.ip.id}"
}
output "arn" {
  value = "${aws_iam_policy.ip.arn}"
}
output "name" {
  value = "${aws_iam_policy.ip.name}"
}
output "path" {
  value = "${aws_iam_policy.ip.path}"
}
output "policy" {
  value = "${aws_iam_policy.ip.policy}"
}
output "description" {
  value = "${aws_iam_policy.ip.description}"
}
```

###### Documentation
[aws_iam_policy](https://www.terraform.io/docs/providers/aws/r/iam_policy.html)
