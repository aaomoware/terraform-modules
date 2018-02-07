resource "aws_s3_bucket_notification" "lambda" {
  count  = "${var.lambda ? 1 : 0}"
  bucket = "${var.bucket}"

  lambda_function {
    id                  = "${var.lambda_id}"
    events              = ["${var.lambda_events}"]
    filter_prefix       = "${var.lambda_filter_prefix}"
    filter_suffix       = "${var.lambda_filter_suffix}"
    lambda_function_arn = "${var.lambda_lambda_function_arn}"
  }
}
