resource "aws_iam_user_ssh_key" "user_sshk" {
  count      = "${length(var.username)}"
  username   = "${element(var.username, count.index)}"

  status     = "${var.status[element(var.username, count.index)]}"
  encoding   = "${var.encoding[element(var.username, count.index)]}"
  public_key = "${var.public_key[element(var.username, count.index)]}"
}
