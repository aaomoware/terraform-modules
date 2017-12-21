module "standard_queue" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/sqs"

  standard = "${var.standard}"
  standard_dlq = "${var.standard_dlq}"
}

module "fifo_queue" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/sqs"

  fifo = "${var.fifo}"
  fifo_dlq = "${var.fifo_dlq}"
}
