####  SSM Document


###### Variables
```
variable name          { default = "" }
variable content       { default = "" }
variable permissions   { default = "" }
variable document_type { default = "" }
```

##### Outputs
```
output "ssmd_hash_type" {
  value = "${aws_ssm_document.ssmd.name}"
}
output "ssmd_hash" {
  value = "${aws_ssm_document.ssmd.hash}"
}
output "ssmd_owner" {
  value = "${aws_ssm_document.ssmd.owner}"
}
output "ssmd_name" {
  value = "${aws_ssm_document.ssmd.name}"
}
output "ssmd_status" {
  value = "${aws_ssm_document.ssmd.status}"
}
output "ssmd_content" {
  value = "${aws_ssm_document.ssmd.content}"
}
output "ssmd_parameter" {
  value = "${aws_ssm_document.ssmd.parameters}"
}
output "ssmd_permissions" {
  value = "${aws_ssm_document.ssmd.permissions}"
}
output "ssmd_description" {
  value = "${aws_ssm_document.ssmd.description}"
}
output "ssmd_created_date" {
  value = "${aws_ssm_document.ssmd.created_date}"
}
output "ssmd_platform_types" {
  value = "${aws_ssm_document.ssmd.platform_types}"
}
output "ssmd_document_type" {
  value = "${aws_ssm_document.ssmd.document_type}"
}
output "ssmd_schema_version" {
  value = "${aws_ssm_document.ssmd.schema_version}"
}
output "ssmd_default_version" {
  value = "${aws_ssm_document.ssmd.default_version}"
}
output "ssmd_latest_version" {
  value = "${aws_ssm_document.ssmd.latest_version}"
}
```

###### Documentation
[aws_ssm_document](https://www.terraform.io/docs/providers/aws/r/ssm_document.html)
