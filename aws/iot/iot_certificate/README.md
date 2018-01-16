####  IoT Certificate


###### Variables
```
variable csr    { default = "" }
variable active { default = "" }
```

##### Outputs
```
resource "aws_sns_topic" "st" {
  name = "${var.name}"
  policy = "${var.policy}"
  display_name = "${var.display_name}"
  delivery_policy = "${var.delivery_policy}"
}
```

###### Documentation
[aws_iot_certificate](https://www.terraform.io/docs/providers/aws/r/iot_certificate.html)
