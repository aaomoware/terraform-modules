#---Athena Named Query
resource "aws_athena_named_query" "athena_named_query" {
  name = "${var.name}"
  query = "${var.query}"
  database = "${var.database}"
  description = "${var.description}"
}
