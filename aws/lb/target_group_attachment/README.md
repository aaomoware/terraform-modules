#### Target Group Attachment

###### Variables
```
variable port              { default = "" }
variable target_id         {}
variable target_group_arn  {}
variable availability_zone { default = "" }

```

##### Outputs
```
output "id" {
  value = "${aws_lb_target_group_attachment.ltga.id}"
}
```

###### Documentation
[aws_lb_target_group_attachment](https://www.terraform.io/docs/providers/aws/r/lb_target_group_attachment.html)
