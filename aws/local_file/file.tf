resource "local_file" "lf" {
    content  = "${var.content}"
    filename = "${var.filename}"
}
