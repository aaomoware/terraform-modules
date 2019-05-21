variable instance_class {}
variable cluster_identifier {}
variable db_subnet_group_name {}

variable create {
  default = "90m"
}

variable update {
  default = "90m"
}

variable delete {
  default = "90m"
}

variable tags {
  default = {}

  type = "map"
}

variable instances {
  default = 0
}

variable engine {
  default = "aurora"
}

variable promotion_tier {
  default = 0
}

variable apply_immediately {
  default = false
}

variable publicly_accessible {
  default = false
}

variable monitoring_interval {
  default = 0
}

variable auto_minor_version_upgrade {
  default = true
}

variable identifier {
  default = ""
}

variable engine_version {
  default = ""
}

variable identifier_prefix {
  default = ""
}

variable availability_zone {
  default = ""
}

variable monitoring_role_arn {
  default = ""
}

variable db_parameter_group_name {
  default = ""
}

variable preferred_backup_window {
  default = ""
}

variable preferred_maintenance_window {
  default = ""
}

variable performance_insights_enabled {
  default = ""
}

variable performance_insights_kms_key_id {
  default = ""
}
