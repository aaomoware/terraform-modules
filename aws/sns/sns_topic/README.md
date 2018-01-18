#### SNS Topic


###### Variables
```
variable name               { default = "" }
variable policy             { default = "" }
variable display_name       { default = "" }
variable delivery_policy    { default = "" }
```

##### Outputs
```
output "st_id" {
  value = "${aws_sns_topic.st.id}"
}
output "st_arn" {
  value = "${aws_sns_topic.st.arn}"
}
```

###### Documentation
[aws_sns_topic](https://www.terraform.io/docs/providers/aws/r/sns_topic.html)
