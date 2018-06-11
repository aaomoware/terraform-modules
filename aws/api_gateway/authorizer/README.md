####  API Gateway Authorizer

###### Variables
```
variable name                             {}
variable rest_api_id                      {}

variable type                             { default = "TOKEN" }
variable provider_arns                    { default = "" }
variable authorizer_uri                   { default = "" }
variable identity_source                  { default = "method.request.header.Authorization" }
variable authorizer_credentials           { default = "" }
variable identity_validation_expression   { default = "" }
variable authorizer_result_ttl_in_seconds { default = 300 }
```

##### Outputs
```
```

###### Documentation
[aws_api_gateway_authorizer](https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html)
