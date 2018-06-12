#### IAM Group


###### Variables
```
variable "paths"                   { default = {} type = "map" }
variable "names"                   { default = [] type = "list" }
```

##### Outputs
```
output "id" {
  value = "${element(concat(aws_iam_group.ig.*.id,list("")),0)}"
}
output "arn" {
  value = "${element(concat(aws_iam_group.ig.*.arn,list("")),0)}"
}
output "name" {
  value = "${element(concat(aws_iam_group.ig.*.name,list("")),0)}"
}
output "path" {
  value = "${element(concat(aws_iam_group.ig.*.path,list("")),0)}"
}
output "unique_id" {
  value = "${element(concat(aws_iam_group.ig.*.unique_id,list("")),0)}"
}
```

###### Documentation
[aws_iam_group](https://www.terraform.io/docs/providers/aws/d/iam_group.html)
