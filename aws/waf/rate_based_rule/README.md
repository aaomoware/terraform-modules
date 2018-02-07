#### WAF Rate Based Rule


###### Variables
```
variable name         { default = "" }
variable type         { default = "" }
variable data_id      { default = "" }
variable negated      { default = "" }
variable rate_key     { default = "" }
variable rate_limit   { default = "" }
variable metric_name  { default = "" }
```

##### Outputs
```
output "base_rule_id" {
  value = "${aws_waf_rate_based_rule.base_rule.id}"
}
```

###### Documentation
[waf_rate_based_rule](https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html)
