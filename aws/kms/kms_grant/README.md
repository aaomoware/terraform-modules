####  KMS Grant


###### Variables
```
variable name                  { default = "" }
variable key_id                { default = "" }
variable operations            { default = [] type = "list" }
variable retire_on_delete      { default = false }
variable grantee_principal     { default = "" }
variable retiree_principal     { default = "" }
variable grant_creation_tokens { default = [] type = "list" }

variable encryption_context_equals { default = {} type = "map" }
variable encryption_context_subset { default = {} type = "map" }
```

##### Outputs
```
output "grant_id" {
  value = "${aws_kms_grant.kg.grant_id}"
}
output "grant_token" {
  value = "${aws_kms_grant.kg.grant_token}"
}
```

###### Documentation
[aws_kms_grant](https://www.terraform.io/docs/providers/aws/r/kms_grant.html)
