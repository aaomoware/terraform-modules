####  IoT Policy


###### Variables
```
variable name   { default = "" }
variable policy { default = "" }
```

##### Outputs
```
output "ip_arn" {
  value = "${aws_iot_policy.ip.arn}"
}
```

###### Documentation
[aws_iot_policy](https://www.terraform.io/docs/providers/aws/r/iot_policy.html)
