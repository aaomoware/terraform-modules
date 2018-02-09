#### WAF SQL Injection Match Set


###### Variables
```
variable name                { default = "" }
variable data                { default = "" }
variable type                { default = "" }
variable text_transformation { default = "" }
```

##### Outputs
```
output "sims_id" {
  value = "${aws_waf_sql_injection_match_set.sims.id}"
}
```

###### Documentation
[aws_waf_sql_injection_match_set](https://www.terraform.io/docs/providers/aws/r/waf_sql_injection_match_set.html)
