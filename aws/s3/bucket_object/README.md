####  S3 Bucket Object


###### Variables
```
variable acl                    { default = "" }
variable key                    { default = "" }
variable etag                   { default = "" }
variable bucket                 { default = "" }
variable source                 { default = "" }
variable content                { default = "" }
variable kms_key_id             { default = "" }
variable content_type           { default = "" }
variable cache_control          { default = "" }
variable storage_class          { default = "" }
variable content_encoding       { default = "" }
variable content_language       { default = "" }
variable website_redirect       { default = "" }
variable content_disposition    { default = "" }
variable server_side_encryption { default = "" }
```

##### Outputs
```
output "oj_id" {
  value = "${aws_s3_bucket_object.object.id}"
}
output "oj_etag" {
  value = "${aws_s3_bucket_object.object.etag}"
}
output "oj_version_id" {
  value = "${aws_s3_bucket_object.object.version_id}"
}
```

###### Documentation
[aws_s3_bucket_object](https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html)
