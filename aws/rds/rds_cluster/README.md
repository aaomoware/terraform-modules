####  RDS Cluster

Manages a RDS Aurora Cluster. To manage cluster instances that inherit configuration from the cluster (when not running the cluster in serverless engine mode), see the aws_rds_cluster_instance resource. To manage non-Aurora databases (e.g. MySQL, PostgreSQL, SQL Server, etc.), see the aws_db_instance resource.

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|cluster_identifier | The cluster identifier. If omitted, Terraform will assign a random, unique identifier.| string | - | no |
|cluster_identifier_prefix | Creates a unique cluster identifier beginning with the specified prefix. Conflicts with cluster_identifier.| string | - | no |
|copy_tags_to_snapshot | – (Optional, boolean) Copy all Cluster tags to snapshots. Default is false.| string | false | no |
|database_name | Name for an automatically created database on cluster creation. There are different naming restrictions per database engine:| string | - | no |
|deletion_protection |  If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true.| string | false | no |
|master_password | Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file.| string | - | no |
|master_username | Username for the master DB user. Please refer to the RDS Naming Constraints| string | - | no |
|final_snapshot_identifier | The name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made.| string | - | no |
|skip_final_snapshot | Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created.| string | false | no |
|availability_zones | A list of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created.| string | list | no |
|backtrack_window | The target backtrack window, in seconds. Only available for aurora engine currently. To disable backtracking, set this value to 0.| string | 0 | no |
|backup_retention_period | The days to retain backups for. Default 1| string | 1 | no |
|preferred_backup_window | The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod| string | - | no | parameter.
preferred_maintenance_window | The weekly time range during which system maintenance can occur, in (UTC) e.g. wed:04:00-wed:04:30| string | - | no |
port | The port on which the DB accepts connections| string | - | no |
vpc_security_group_ids | List of VPC security groups to associate with the Cluster| string | list | no |
snapshot_identifier | Specifies whether or not to create this cluster from a snapshot| string | - | no |
global_cluster_identifier | The global cluster identifier specified on aws_rds_global_cluster.| string | - | no |
storage_encrypted | Specifies whether the DB cluster is encrypted. The default is false for provisioned engine_mode and true for serverless engine_mode.| string | false | no |
replication_source_identifier | ARN of a source DB cluster or DB instance if this DB cluster is to be created as a Read Replica.| string | - | no |
apply_immediately | Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is false. | string | false | no |
db_subnet_group_name | A DB subnet group to associate with this DB instance.| string | - | no |
db_cluster_parameter_group_name |  A cluster parameter group to associate with the cluster.| string | - | no |
kms_key_id | The ARN for the KMS encryption key. When specifying kms_key_id, storage_encrypted needs to be set to true.| string | - | no |
iam_roles |  A List of ARNs for the IAM roles to associate to the RDS Cluster.| string | list | no |
iam_database_authentication_enabled | Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. | string | - | no |
engine | The name of the database engine to be used for this DB cluster. Defaults to aurora. Valid Values: aurora, aurora-mysql, aurora-postgresql| string | aurora | no |
engine_mode | The database engine mode. Valid values: global, parallelquery, provisioned, serverless. Defaults to: provisioned. | string | provisioned | no |
engine_version | The database engine version. Updating this argument results in an outage.| string | - | no |
source_region | The source region for an encrypted replica DB cluster.| string | - | no |
enabled_cloudwatch_logs_exports | List of log types to export to cloudwatch. If omitted, no logs will be exported. | list | - | no |
scaling_configuration | Nested attribute with scaling properties. Only valid when engine_mode is set to serverless. More details below.| string | - | no |
tags | A mapping of tags to assign to the DB cluster.| map | - | no |


| Name | Description |
|------|-------------|
|arn | Amazon Resource Name (ARN) of cluster |
|id | The RDS Cluster Identifier |
|cluster_identifier | The RDS Cluster Identifier |
|cluster_resource_id | The RDS Cluster Resource ID |
|cluster_members | List of RDS Instances that are a part of this cluster |
|allocated_storage | The amount of allocated storage |
|availability_zones | The availability zone of the instance |
|backup_retention_period | The backup retention period |
|preferred_backup_window | The daily time range during which the backups happen |
|preferred_maintenance_window | The maintenance window |
|endpoint | The DNS address of the RDS instance |
|reader_endpoint | A read-only endpoint for the Aurora cluster, automatically load-balanced across replicas |
|engine | The database engine |
|engine_version | The database engine version |
|maintenance_window | The instance maintenance window |
|database_name | The database name |
|port | The database port |
|status | The RDS instance status |
|master_username | The master username for the database |
|storage_encrypted | Specifies whether the DB cluster is encrypted |
|replication_source_identifier | ARN of the source DB cluster or DB instance if this DB cluster is created as a Read Replica. |
|hosted_zone_id | The Route53 Hosted Zone ID of the endpoint |


###### Documentation
[aws_rds_cluster](https://www.terraform.io/docs/providers/aws/r/rds_cluster.html)
