####  Application Load Balancer Listener Rule

###### Variables
```
variable type             {}
variable field            {}
variable values           {}
variable priority         {}
variable Condition        {}
variable listener_arn     {}
variable target_group_arn {}
```

##### Outputs
```
output "id" {
  value = "${aws_lb_listener_rule.llr.id}"
}
output "arn" {
  value = "${aws_lb_listener_rule.llr.arn}"
}
```

###### Documentation
[aws_lb_listener_rule](https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html)
