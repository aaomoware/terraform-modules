variable region {
  default = "eu-west-1"
}

variable profile {
  default = "playground"
}

variable name {
  default = "aws-test"
}

variable family {
  default = "consul-aws"
}

locals {
  tags {
    "ecs_td" {
      "Name"        = "aws-test"
      "Service"     = "ECS - Task Definition"
      "Department"  = "aws-test"
      "Environment" = "Playground"
    }
  }
}
