resource "aws_service_discovery_service" "sds" {
  name = "${var.name}"
  description = "${var.description}"

  dns_config {
    namespace_id = "${var.namespace_id}"

    dns_records {
      ttl = "${var.ttl}"
      type = "${var.type}"
    }
  }

  health_check_config {
    failure_threshold = "${var.failure_threshold}"
    resource_path = "${var.resource_path}"
    type = "${var.type}"
  }

  lifecycle  {
    create_before_destroy = true
  }
}
