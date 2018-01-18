####  AWS Message Broker Configuration


###### Variables
```
variable data           { default = "" }
variable name           { default = "" }
variable engine_type    { default = "" }
variable description    { default = "" }
variable engine_version { default = "" }
```

##### Outputs
```
output "mc_id" {
  value = "${aws_mq_configuration.mc.id}"
}
output "mc_arn" {
  value = "${aws_mq_configuration.mc.arn}"
}
```

###### Documentation
[aws_mq_configuration](https://www.terraform.io/docs/providers/aws/r/mq_configuration.html)
