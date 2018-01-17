####  IoT Certificate


###### Variables
```
variable csr    { default = "" }
variable active { default = "" }
```

##### Outputs
```
output "ic_arn" {
  value = "${aws_iot_certificate.ic.arn}"
}
```

###### Documentation
[aws_iot_certificate](https://www.terraform.io/docs/providers/aws/r/iot_certificate.html)
