####  Application Target Group

###### Variables
```
variable name                 { default = "" }
variable port                 { default = "" }
variable tags                 { default = "" }
variable vpc_id               { default = "" }
variable tg_type              { default = "" }
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
  value = "${element(concat(aws_lb_target_group.ltga.*.id, list("")), 0)}"
}
output "ltga_arn" {
  value = "${element(concat(aws_lb_target_group.ltga.*.arn, list("")), 0)}"
}
output "ltga_name" {
  value = "${element(concat(aws_lb_target_group.ltga.*.name, list("")), 0)}"
}
output "ltga_arn_suffix" {
  value = "${element(concat(aws_lb_target_group.ltga.*.arn_suffix, list("")), 0)}"
}


output "ltgn_id" {
  value = "${element(concat(aws_lb_target_group.ltgn.*.id, lists("")), 0)}"
}
output "ltgn_arn" {
  value = "${element(concat(aws_lb_target_group.ltgn.*.arn, lists("")), 0)}"
}
output "ltgn_name" {
  value = "${element(concat(aws_lb_target_group.ltgn.*.name, lists("")), 0)}"
}
output "ltgn_arn_suffix" {
  value = "${element(concat(aws_lb_target_group.ltgn.*.arn_suffix, list("")), 0)}"
}
```

###### Documentation
[aws_lb_target_group](https://www.terraform.io/docs/providers/aws/r/lb_target_group.html)
