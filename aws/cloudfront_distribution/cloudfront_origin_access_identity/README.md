#### CloudFront Origin Access Identity


###### Variables
````
variable comment { default = "" }
````

###### Outputs
```
output "origin_access_identity_id" {
  value = "${aws_cloudfront_origin_access_identity.origin_access_identity.id}"
}
output "origin_access_identity_iam_arn" {
  value = "${aws_cloudfront_origin_access_identity.origin_access_identity.iam_arn}"
}
```


###### Documentation
[ aws_cloudfront_origin_access_identity ](https://www.terraform.io/docs/providers/aws/r/cloudfront_origin_access_identity.html)
