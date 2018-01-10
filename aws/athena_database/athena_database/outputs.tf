output "athena_db_id" {
  value = "${aws_athena_database.athena_db.*.id}"
}
