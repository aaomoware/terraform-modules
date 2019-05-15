####  ACM Certificate

The ACM certificate resource allows requesting and management of certificates from the Amazon Certificate Manager.


## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|domain_namem| A domain name for which the certificate should be issued | string | - | yes |
|subject_alternative_names| A list of domains that should be SANs in the issued certificate | list | - | no |
|validation_methodm| Which method to use for validation. DNS or EMAIL are valid, NONE for certificates that were imported into ACM and then into Terraform | string | - | yes |
|private_key | The certificate's PEM-formatted private key | string | - | yes |
|certificate_body | The certificate's PEM-formatted public key | string | - | yes |
|certificate_chain | The certificate's PEM-formatted chain | string | - | no |
|tags | A mapping of tags to assign to the resource. | map | - | no |


## Outputs

| Name | Description |
|------|-------------|
|id | The ARN of the certificate |
|arn | The ARN of the certificate |
|domain_name | The domain name for which the certificate is issued |
|domain_validation_options | A list of attributes to feed into other resources to complete certificate validation |


## Testing
See tests folder

###### Documentation
[aws_acm_certificate](https://www.terraform.io/docs/providers/aws/r/acm_certificate.html)
