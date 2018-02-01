resource "aws_elasticsearch_domain_policy" "edp" {
  domain_name     = "${var.domain_name}"
  access_policies = <<CONFIG
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "es:*",
      "Resource": "${var.domain_arn}/*",
      "Condition": {
        "IpAddress": {
          "aws:SourceIp": ["${var.allowed_source_ips}"]
        }
      }
    },
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "${var.role_arn}"
      },
      "Action": "es:*",
      "Resource": "${var.domain_arn}/*"
    }
  ]
}
CONFIG
}
