####  SSM Maintenance Window Target


###### Variables
```
variable targets           { default = "" }
variable window_id         { default = "" }
variable resource_type     { default = "" }
variable owner_information { default = "" }
```

##### Outputs
```
output "ssmmwt_id" {
  value = "${aws_ssm_maintenance_window_target.ssmmwt.id}"
}
```

###### Documentation
[aws_ssm_maintenance_window_target](https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html)
