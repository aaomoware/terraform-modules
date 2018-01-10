#---Athena database
resource "aws_athena_database" "athena_db" {
  count = "${length(var.name) == length(var.bucket) ? length(var.bucket) :  0}"

  name = "${element(var.name, count.index)}"
  bucket = "${element(var.bucket, count.index)}"
  force_destroy = "${var.force_destroy}"
}
