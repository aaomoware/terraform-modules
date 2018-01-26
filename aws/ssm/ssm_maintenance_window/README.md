####  SSM Maintenance Window


###### Variables
```
variable name                       { default = "" }
variable cutoff                     { default = "" }
variable duration                   { default = "" }
variable schedule                   { default = "" }
variable allow_unassociated_targets { default = "" }
```

##### Outputs
```
output "ssmm_id" {
  value = "${aws_ssm_maintenance_window.ssmm.id}"
}
```

###### Documentation
[aws_ssm_maintenance_window](https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html)
