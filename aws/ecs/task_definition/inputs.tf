variable cpu {
  default = "128"
}

variable tags {
  default = {}
  type    = "map"
}

variable family {}

variable volume {
  default = []

  type = "list"
}

variable memory {
  default = "256"
}

variable ipc_mode {
  default = "none"
}

variable pid_mode {
  default = ""
}

variable network_mode {
  default = "host"
}

variable task_role_arn {
  default = ""
}

variable execution_role_arn {
  default = ""
}

variable placement_constraints {
  default = []

  type = "list"
}

variable container_definitions {
  default = ""
}

variable requires_compatibilities {
  default = ["EC2"]

  type = "list"
}
