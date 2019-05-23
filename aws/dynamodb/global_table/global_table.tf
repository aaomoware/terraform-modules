resource "aws_dynamodb_global_table" "dgt" {
  name = "${var.name}"

  replica {
    region_name = "${region_name}"
  }
}
