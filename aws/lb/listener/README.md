####  Application Load Balancer Listener

###### Variables
```
variable protocol          { default = "" }
variable ssl_policy        { default = "" }
variable certificate_arn   { default = "" }

variable port              {}
variable type              {}
variable target_group_arn  {}
variable load_balancer_arn {}
```

##### Outputs
```
output "id" {
  value = "${aws_alb_listener.ll.id}"
}
output "arn" {
  value = "${aws_alb_listener.ll.arn}"
}
```

###### Documentation
[aws_lb_listener](https://www.terraform.io/docs/providers/aws/r/lb_listener.html)
