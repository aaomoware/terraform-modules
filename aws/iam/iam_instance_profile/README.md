#### IAM Instance Profile


###### Variables
```
variable name {}
variable role {}
```

##### Outputs
```
output "id" {
  value = "${aws_iam_instance_profile.ip.id}"
}
output "arn" {
  value = "${aws_iam_instance_profile.ip.arn}"
}
output "name" {
  value = "${aws_iam_instance_profile.ip.name}"
}
output "role" {
  value = "${aws_iam_instance_profile.ip.role}"
}
output "unique_id" {
  value = "${aws_iam_instance_profile.ip.unique_id}"
}
```

###### Documentation
[aws_iam_instance_profile](https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html)
