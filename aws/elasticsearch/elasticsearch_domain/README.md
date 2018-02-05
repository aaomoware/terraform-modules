#### Elasticsearch Domain


###### Variables
```
variable iops                          { default = 0 }
variable volume_type                   { default = "" }
variable volume_size                   { default = "" }
variable ebs_enabled                   { default = true }

variable kms_key_id                    { default = "" }
variable ear_enabled                   { default = false }

variable subnet_ids                    { default = "" }
variable security_group_ids            { default = "" }

variable domain_name                   { default = "" }
variable access_policies               { default = "" }
variable elasticsearch_version         { default = "" }

variable instance_type                 { default = "" }
variable instance_count                { default = 0 }
variable dedicated_master_type         { default = "" }
variable dedicated_master_count        { default = "" }
variable zone_awareness_enabled        { default = "" }
variable dedicated_master_enabled      { default = "" }

variable log_type                      { default = "INDEX_SLOW_LOGS" }
variable lpo_enabled                   { default = false }
variable cloudwatch_log_group_arn      { default = "" }
variable automated_snapshot_start_hour { default = "" }
```

##### Outputs
```
output "ed_arn" {
  value = "${aws_elasticsearch_domain.ed.arn}"
}
output "ed_endpoint" {
  value = "${aws_elasticsearch_domain.ed.endpoint}"
}
output "ed_domain_id" {
  value = "${aws_elasticsearch_domain.ed.domain_id}"
}
output "ed_kibana_endpoint" {
  value = "${aws_elasticsearch_domain.ed.kibana_endpoint}"
}
```

###### Documentation
[aws_elasticsearch_domain](https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html)
