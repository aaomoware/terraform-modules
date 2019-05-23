variable region {
  default = "eu-west-1"
}

variable profile {
  default = "playground"
}

variable name {
  default = "aws-test"
}

locals {
  tags {
    "ecs" {
      "Name"        = "aws-test"
      "Service"     = "ECS"
      "Department"  = "aws-test"
      "Environment" = "${terraform.workspace}"
    }
  }
}
