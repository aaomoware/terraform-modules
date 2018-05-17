resource "aws_eip" "eip" {
    tags = "${var.tags}"
}
