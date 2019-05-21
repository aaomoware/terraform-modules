####  RDS Cluster Resource Instance

Provides an RDS Cluster Instance Resource. A Cluster Instance Resource defines attributes that are specific to a single instance in a RDS Cluster, specifically running Amazon Aurora.

## Variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|identifier |  The indentifier for the RDS instance, if omitted, Terraform will assign a random, unique identifier.| string | - | no |
|identifier_prefix | Forces new resource) Creates a unique identifier beginning with the specified prefix. Conflicts with identifier.| string | - | no |
|cluster_identifier | The identifier of the aws_rds_cluster in which to launch this instance.| string | - | no |
|engine | The name of the database engine to be used for the RDS instance. Defaults to aurora. Valid Values: aurora, aurora-mysql, aurora-postgresql. | string | aurora | no |
|engine_version | The database engine version.| string | - | no |
|instance_class | The instance class to use. For details on CPU and memory, see Scaling Aurora DB Instances. Aurora uses db.* instance classes/types. | string | - | no |
|publicly_accessible | Bool to control if instance is publicly accessible. Default false.| string | false | no |
|db_subnet_group_name |if publicly_accessible = false, Optional otherwise) A DB subnet group to associate with this DB instance. | string | - | no |
|db_parameter_group_name | The name of the DB parameter group to associate with this instance.| string | - | no |
|apply_immediately | Specifies whether any database modifications are applied immediately, or during the next maintenance window | boolean | false | no |
|monitoring_role_arn | The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs. | string | - | no |
|monitoring_interval | The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. | integer | 0 | no |
|promotion_tier | Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer.| integer | 0 | no |
|availability_zone | Computed) The EC2 Availability Zone that the DB instance is created in. See docs about the details.| string | - | no |
|preferred_backup_window | The daily time range during which automated backups are created if automated backups are enabled. Eg: "04:00-09:00"| string | - | no |
|preferred_maintenance_window | The window to perform maintenance in. Syntax: "ddd:hh24:mi-ddd:hh24:mi". Eg: "Mon:00:00-Mon:03:00".| string | - | no |
|auto_minor_version_upgrade | Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. | string | - | no |
|performance_insights_enabled | Specifies whether Performance Insights is enabled or not.| string | - | no |
|performance_insights_kms_key_id | The ARN for the KMS key to encrypt Performance Insights data. | string | - | no |
|copy_tags_to_snapshot | boolean) Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. | boolean | false | no |
|tags | A mapping of tags to assign to the instance.| string | - | no |


## Outputs

| Name | Description |
|------|-------------|
|arn | Amazon Resource Name (ARN) of cluster instance |
|cluster_identifier | The RDS Cluster Identifier |
|identifier | The Instance identifier |
|id | The Instance identifier |
|writer | Boolean indicating if this instance is writable. False indicates this instance is a read replica. |
|allocated_storage | The amount of allocated storage |
|availability_zone | The availability zone of the instance |
|endpoint | The DNS address for this instance. May not be writable |
|engine | The database engine |
|engine_version | The database engine version |
|database_name | The database name |
|port | The database port |
|status | The RDS instance status |
|storage_encrypted | Specifies whether the DB cluster is encrypted. |
|kms_key_id | The ARN for the KMS encryption key if one is set to the cluster. |
|dbi_resource_id | The region-unique, immutable identifier for the DB instance. |
|performance_insights_enabled | Specifies whether Performance Insights is enabled or not. |
|performance_insights_kms_key_id | The ARN for the KMS encryption key used by Performance Insights. |

###### Documentation
[aws_rds_cluster_instance](https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html)
