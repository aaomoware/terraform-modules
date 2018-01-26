####  SSM Association


###### Variables
```
variable name                 { default = "" }
variable targets              { default = "" }
variable parameters           { default = "" }
variable instance_id          { default = "" }
variable association_name     { default = "" }
variable document_version     { default = "" }
variable schedule_expression  { default = "" }

#---Output Location
variable s3_key_prefix        { default = "" }
variable s3_bucket_name       { default = "" }

#---Targets
variable key                  { default = "" }
variable values               { default = [] type = "list" }
```

##### Outputs
```
output "ssma_name" {
  value = "${aws_ssm_association.ssma.name}"
}
output "ssma_parameters" {
  value = "${aws_ssm_association.ssma.parameters}"
}
output "ssma_instance_ids" {
  value = "${aws_ssm_association.ssma.instance_ids}"
}
```

###### Documentation
[aws_ssm_association](https://www.terraform.io/docs/providers/aws/r/ssm_association.html#targets)
