resource "aws_db_event_subscription" "des" {
  count = "${var.prefix ? 0 : 1}"

  name             = "${var.name}"
  tags             = "${var.tags}"
  enabled          = "${var.enabled}"
  sns_topic        = "${var.sns_topic}"
  source_ids       = ["${var.source_ids}"]
  source_type      = "${var.source_type}"
  event_categories = ["${var.event_categories}"]
}

resource "aws_db_event_subscription" "des_prefix" {
  count = "${var.prefix ? 1 : 0}"

  tags             = "${var.tags}"
  enabled          = "${var.enabled}"
  sns_topic        = "${var.sns_topic}"
  source_ids       = ["${var.source_ids}"]
  name_prefix      = "${var.name}"
  source_type      = "${var.source_type}"
  event_categories = ["${var.event_categories}"]
}
