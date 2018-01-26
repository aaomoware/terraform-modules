####  Redshift Cluster Parameter Group


###### Variables
```
variable name         { default = "" }
variable family       { default = "" }
variable description  { default = "" }

#---parameter; define yours
variable par_name_1   { default = "" }
variable par_name_2   { default = "" }
variable par_value_1  { default = "" }
variable par_value_2  { default = "" }
```

##### Outputs
```
output "rpg_id" {
  value = "${aws_redshift_parameter_group.rpg.id}"
}
```

###### Documentation
[aws_redshift_parameter_group](https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html)
