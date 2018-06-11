####  RDS DB Cluster Parameter Group

###### Variables
```
variable name         { default  = "" }
variable tags         { default  = "" }
variable family       {}
variable Parameter    { default  = "" }
variable parameters   { default  = "" }
variable description  { default  = "Managed by Terraform" }
```

##### Outputs
```
output "id" {
  value = "${aws_rds_cluster_parameter_group.rcpg.id}"
}
output "arn" {
  value = "${aws_rds_cluster_parameter_group.rcpg.arn}"
}
```

###### Documentation
[aws_rds_cluster_parameter_group](https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html)
