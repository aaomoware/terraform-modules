#### AWS Route53 Query Log


###### Variables
```
variable zone_id                  { default = "" }
variable cloudwatch_log_group_arn { default = "" }
```

##### Outputs
```
resource "aws_route53_query_log" "rql" {
  zone_id                  = "${var.zone_id}"
  cloudwatch_log_group_arn = "${var.cloudwatch_log_group_arn}"
}
```

###### Documentation
[aws_route53_query_log](https://www.terraform.io/docs/providers/aws/r/route53_query_log.html)
