#### IAM User


###### Variables
```
variable name {}

variable path {
  default = "/"
}

variable force_destroy {
  default = true
}
```

##### Outputs
```
output "arn" {
  value = "${aws_iam_user.iu.arn}"
}

output "name" {
  value = "${aws_iam_user.iu.name}"
}

output "unique_id" {
  value = "${aws_iam_user.iu.unique_id}"
}
```

###### Documentation
[aws_iam_user](https://www.terraform.io/docs/providers/aws/d/iam_user.html)
