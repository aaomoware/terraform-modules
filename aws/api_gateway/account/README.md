####  API Gateway Account

###### Variables
```
variable cloudwatch_role_arn { default = "" }
```

##### Outputs
```
output "throttle_settings_rate_limit" {
  value = "${aws_api_gateway_account.aga.throttle_settings.rate_limit}"
}
output "throttle_settings_burst_limit" {
  value = "${aws_api_gateway_account.aga.throttle_settings.burst_limit}"
}
```

###### Documentation
[aws_api_gateway_account](https://www.terraform.io/docs/providers/aws/r/api_gateway_account.html)
