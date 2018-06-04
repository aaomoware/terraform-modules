module "dynamodb" {
  source = "git@github.com:aaomoware/terraform-modules.git//aws/dynamodb/table"

  name       = "${var.name}"
  tags       = "${var.tags}"
  simple     = "${var.simple}"
  hash_key   = "${var.hash_key}"
  attributes = "${var.attributes}"
}
