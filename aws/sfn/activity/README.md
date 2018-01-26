####  Step Function Activity


###### Variables
```
variable name { default = "" }
```

##### Outputs
```
output "sa_id" {
  value = "${aws_sfn_activity.sa.id}"
}
output "sa_name" {
  value = "${aws_sfn_activity.sa.name}"
}
output "sa_creation_date" {
  value = "${aws_sfn_activity.sa.creation_date}"
}
```

###### Documentation
[sfn_activity](https://www.terraform.io/docs/providers/aws/r/sfn_activity.html)
