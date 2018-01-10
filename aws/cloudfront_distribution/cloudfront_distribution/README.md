#### CloudFrontd Distribution


###### Variables
```
#---General
variable origin                         { default = "" }
variable comment                        { default = "" }
variable enabled                        { default = true }
variable aliases                        { default = "" }
variable web_acl_id                     { default = "" }
variable price_class                    { default = "" }
variable http_version                   { default = "" }
variable cache_behavior                 { default = "" }
variable logging_config                 { default = "" }
variable is_ipv6_enabled                { default = false }
variable retain_on_delete               { default = "" }
variable viewer_certificate             { default = "" }
variable default_root_object            { default = "" }
variable custom_error_response          { default = "" }
variable default_cache_behavior         { default = "" }


#---Cache Behavior Arguments
variable max_ttl                        { default = "" }
variable min_ttl                        { default = "" }
variable compress                       { default = "" }
variable default_ttl                    { default = "" }
variable path_pattern                   { default = "" }
variable trusted_signers                { default = "" }
variable allowed_methods                { default = "" }
variable forwarded_values               { default = "" }
variable smooth_streaming               { default = "" }
variable target_origin_id               { default = "" }
variable viewer_protocol_policy         { default = "" }
variable lambda_function_association    { default = "" }

#--Forwarded Values Arguments
variable headers                        { default = "" }
variable cookies                        { default = "" }
variable query_string                   { default = false }
variable query_string_cache_keys        { default = "" }

#---Lambda Function Association
variable event_type                     { default = "" }
variable lambda_arn                     { default = "" }

#---Cookies Arguments
variable forward                        { default = "" }
variable whitelisted_names              { default = "" }

#--- Custom Error Response Arguments
variable error_code                     { default = "" }
variable response_code                  { default = "" }
variable response_page_path             { default = "" }
variable error_caching_min_ttl          { default = "" }

#---Logging Config Arguments
variable bucket                         { default = "" }
variable prefix                         { default = "" }
variable include_cookies                { default = false }

#--- Origin Arguments
variable origin_id                      { default = "" }
variable domain_name                    { default = "" }
variable origin_path                    { default = "" }
variable custom_header                  { default = "" }
variable s3_origin_config               { default = "" }
variable custom_origin_config           { default = "" }

#--- Custom Origin Config Arguments
variable http_port                      { default = "" }
variable https_port                     { default = "" }
variable origin_read_timeout            { default = "" }
variable origin_ssl_protocols           { default = "" }
variable origin_protocol_policy         { default = "" }
variable origin_keepalive_timeout       { default = "" }

#---S3 Origin Config Arguments
variable origin_access_identity         { default = "" }

#--- Restrictions Arguments
variable locations                      { default = "" }
variable restriction_type               { default = "" }

#--- Viewer Certificate Arguments
variable ssl_support_method             { default = "" }
variable iam_certificate_id             { default = "" }
variable acm_certificate_arn            { default = "" }
variable minimum_protocol_version       { default = "" }
variable cloudfront_default_certificate { default = true }
```

##### Outputs
```
output "cdn_id" {
  value = "${resource "aws_cloudfront_distribution.s3_distribution.id}"
}
output "cdn_arn" {
  value = "${resource "aws_cloudfront_distribution.s3_distribution.arn}"
}
output "cdn_domain_name" {
  value = "${resource "aws_cloudfront_distribution.s3_distribution.domain_name}"
}
output "cdn_hosted_zone_id" {
  value = "${resource "aws_cloudfront_distribution.s3_distribution.hosted_zone_id}"
}
output "cdn_caller_reference" {
  value = "${resource "aws_cloudfront_distribution.s3_distribution.cdn_caller_reference}"
}
output "cdn_active_trusted_signers" {
  value = "${resource "aws_cloudfront_distribution.s3_distribution.active_trusted_signers}"
}
```

###### Documentation
[aws_cloudfront_distribution](https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#origin_ssl_protocols)
