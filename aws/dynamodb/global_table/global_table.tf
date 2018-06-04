resource "aws_dynamodb_global_table" "dgt" {
  count = "${length(var.region_name)}"
  name  = "${var.name}"

  replica {
    region_name = "${element(var.region_name,count.index)}"
  }
}
