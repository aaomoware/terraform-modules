resource "aws_api_gateway_authorizer" "demo" {
  name                             = "${var.name}"
  type                             = "${var.type}"
  rest_api_id                      = "${var.rest_api_id}"
  provider_arns                    = ["${var.provider_arns}"]
  authorizer_uri                   = "${var.authorizer_uri}"
  identity_source                  = "${var.identity_source}"
  authorizer_credentials           = "${var.authorizer_credentials}"
  identity_validation_expression   = "${var.identity_validation_expression}"
  authorizer_result_ttl_in_seconds = "${var.authorizer_result_ttl_in_seconds}"
}
