####  SSM Patch Baseline

```
#------------------------------------------------------------
#- this resource is complex to formulate a generic use case -
#------------------------------------------------------------
```

###### Variables
```
variable patch_filter_key_1                { default = "" }
variable patch_filter_key_2                { default = "" }
variable global_filter_key_1               { default = "" }

variable patch_filter_values_1             { default = [] type = "list" }
variable patch_filter_values_2             { default = [] type = "list" }
variable global_filter_values_2            { default = [] type = "list" }

variable name                              { default = "" }
variable description                       { default = "" }
variable global_filter                     { default = "" }
variable approval_rule                     { default = "" }
variable operating_system                  { default = "" }
variable approved_patches                  { default = [] type = "list" }
variable rejected_patches                  { default = [] type = "list" }
variable approved_patches_compliance_level { default = "" }
```

##### Outputs
```
output "ssmpb_id" {
  value = "${aws_ssm_patch_baseline.ssmpb.id}"
}
```

###### Documentation
[aws_ssm_patch_baseline](https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html)
