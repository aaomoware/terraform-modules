#### Provides a Direct Connect LAG


###### Variables
```
variable tags                  { default = {} type = "map" }
variable name                  {}
variable location              {}
variable force_destroy         { default = false }
variable connections_bandwidth {}s
```

##### Outputs
```
output "id" {
  value = "${aws_dx_lag.dl.id}"
}
output "arn" {
  value = "${aws_dx_lag.dl.arn}"
}
```

###### Documentation
[aws_dx_lag](https://www.terraform.io/docs/providers/aws/r/dx_lag.html)
