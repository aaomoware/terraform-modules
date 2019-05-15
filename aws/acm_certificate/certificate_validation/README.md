####  ACM Certificate Validation

This resource represents a successful validation of an ACM certificate in concert with other resources.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|certificate_arn | The ARN of the certificate that is being validated. | string | - | yes |
|validation_record_fqdns | List of FQDNs that implement the validation. Only valid for DNS validation method ACM certificates. If this is set, the resource can implement additional sanity checks and has an explicit dependency on the resource that is implementing the validation | string | - | no |


## Outputs

| Name | Description |
N/A

###### Documentation
[aws_acm_certificate_validation](https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html)
