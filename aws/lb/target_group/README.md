####  Application Target Group

###### Variables
```
variable name                 { default = "" }
variable port                 { default = "" }
variable tags                 { default = "" }
variable vpc_id               { default = "" }
variable protocol             { default = "" }
variable stickiness           { default = "" }
variable slow_start           { default = "0" }
variable target_type          { default = "instance" }
variable health_check         { default = "" }
variable proxy_protocol_v2    { default = "disable" }
variable deregistration_delay { default = "300" }
```

##### Outputs
```
output "ltga_id" {
  value = "${aws_alb_target_group.ltga.id}"
}
output "ltga_arn" {
  value = "${aws_alb_target_group.ltga.arn}"
}
output "ltga_name" {
  value = "${aws_alb_target_group.ltga.name}"
}
output "ltga_arn_suffix" {
  value = "${aws_alb_target_group.ltga.arn_suffix}"
}


output "ltgn_id" {
  value = "${aws_alb_target_group.ltgn.id}"
}
output "ltgn_arn" {
  value = "${aws_alb_target_group.ltgn.arn}"
}
output "ltgn_name" {
  value = "${aws_alb_target_group.ltgn.name}"
}
output "ltgn_arn_suffix" {
  value = "${aws_alb_target_group.ltgn.arn_suffix}"
}
```

###### Documentation
[aws_lb_target_group](https://www.terraform.io/docs/providers/aws/r/lb_target_group.html)
