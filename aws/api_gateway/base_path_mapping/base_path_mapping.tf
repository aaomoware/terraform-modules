resource "aws_api_gateway_base_path_mapping" "agbpm" {
  api_id      = "${var.api_id}"
  base_path   = "${var.base_path}"
  stage_name  = "${var.stage_name}"
  domain_name = "${var.domain_name}"
}
