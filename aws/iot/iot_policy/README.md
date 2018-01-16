####  IoT Policy


###### Variables
```
variable name   { default = "" }
variable policy { default = "" }
```

##### Outputs
```
resource "aws_iot_policy" "ip" {
  name   = "${var.name}"
  policy = "${var.policy}"
}
```

###### Documentation
[aws_iot_policy](https://www.terraform.io/docs/providers/aws/r/iot_policy.html)
