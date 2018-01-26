####  Step Function State Machine


###### Variables
```
variable name        { default = "" }
variable role_arn    { default = "" }
variable destination { default = "" }
```

##### Outputs
```
output "ssm_id" {
  value = "${aws_sfn_state_machine.ssm.id}"
}
output "ssm_status" {
  value = "${aws_sfn_state_machine.ssm.status}"
}
output "ssm_creation_date" {
  value = "${aws_sfn_state_machine.ssm.creation_date}"
}
```

###### Documentation
[sfn_state_machine](https://www.terraform.io/docs/providers/aws/r/sfn_state_machine.html)
