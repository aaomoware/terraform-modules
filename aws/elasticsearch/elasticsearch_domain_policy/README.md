#### Elasticsearch Domain Policy


###### Variables
```
variable role_arn           { default = "" }
variable domain_arn         { default = "" }
variable domain_name        { default = "" }
variable allowed_source_ips { default = [] type = "list" }
```

##### Outputs
```
N/A
```

###### Documentation
[aws_elasticsearch_domain_policy](https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html)
