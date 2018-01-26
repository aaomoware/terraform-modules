####  SSM Patch Group


###### Variables
```
variable baseline_id { default = "" }
variable patch_group { default = "" }
```

##### Outputs
```
output "ssmpg_id" {
  value = "${aws_ssm_patch_group.ssmpg.id}"
}
```

###### Documentation
[aws_ssm_patch_group](https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html)
