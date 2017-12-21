variable "sse"                              { default = false }
variable "fifo"                             { default = false }
variable "standard"                         { default = false }

variable "sse_dlq"                          { default = false  }
variable "fifo_dlq"                         { default = false  }
variable "standard_dlq"                     { default = false  }

variable "env"                              { default = "venus" }
variable "sse_name"                         { default = "sse" }
variable "fifo_name"                        { default = "fifo" }
variable "standard_name"                    { default = "standard" }

variable "policy" {
  type = "string"
  default = <<EOF
  {
    "Version": "2012-10-17",
    "Id": "NotYetSupported",
    "Statement": [
      {
        "Sid": "Sid1513253646759",
        "Effect": "Allow",
        "Principal": "*",
        "Action": "SQS:*",
        "Resource": "NotYetSupported"
      }
    ]
  }
EOF
}
variable "fifo_queue"                        { default = false }
variable "name_prefix"                       { default = "" }
variable "delay_seconds"                     { default = 0 }
variable "redrive_policy"                    { default = "" }
variable "maxReceiveCount"                   { default = 4 }
variable "max_message_size"                  { default = 262144 }
variable "kms_master_key_id"                 { default = "" }
variable "deadLetterTargetArn"               { default = "" }
variable "message_retention_seconds"         { default = 345600 }
variable "receive_wait_time_seconds"         { default = 0 }
variable "visibility_timeout_seconds"        { default = 30 }
variable "content_based_deduplication"       { default = true }
variable "kms_data_key_reuse_period_seconds" { default = 300 }
