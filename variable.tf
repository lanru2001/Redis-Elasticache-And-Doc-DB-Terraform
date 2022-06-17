
variable "description" {
   
  description = "The information about the replication group"
  type.       = string
  default     = "uat redis group"

}

variable "replication_group_id" {
   
  description = "The custer id/name of the redis replication group or Elasticache cluster "
  type        = string 
  default     = "uat-authtokens"

}


variable "engine" {
   
  description = "The Elasticache in-memory data store used for cache and message broker"
  type.       = ""
  default     = "redis"

}

variable "engine_version" {
   
  description = "The engine version for Redis Cluster"
  type        =  string
  default     = "3.2.10"

}

variable "node_type" {
   
  description = "The instance/node type for the Redis Cluster"
  type        = string
  default     = "cache.m3.medium"

}

variable "num_cache_clusters" {
   
  description = "Number of replication nodes for Redis Cluster"
  type.       = number
  default     = 2

}

variable "automatic_failover_enabled" {
   
  description = "Whether to enable automatic failover"
  type.       = bool
  default     = false

}

variable "maintenance_window" {
   
  description = "The maintenance window for Redis Cluster"
  type        = string
  default     = "sun:01:00-sun:03:00"

}

variable "auto_minor_version_upgrade" {
   
  description = "Whether to allow automatic minor version upgrade"
  type        = bool
  default     = true

}

variable "apply_immediately" {
   
  description = "Whether to apply change immediately"
  type        = bool
  default     = false

}

variable "snapshot_retention_limit" {
   
  description = "The snapshot retention limit in day(s)"
  type        = number
  default     = 1

}

variable "snapshot_window" {
   
  description = "The snapsho window in UTC"
  type        = string
  default     = "03:00-04:00"

}

variable "subnet_group_name" {
   
  description = "The elasticache Redis subnet group name"
  type        = string
  default     = ""

}

variable "security_group_ids" {
   
  description = "The ids of the ingress and engress rule"
  type        = list(string)
  default     = [ "sg-0e21285b96d9869d1" ]

}

variable "port" {
   
  description = "Redis default port"
  type        = number
  default     = 6379

}

variable "parameter_group_name" {
   
  description = "The parameter group name"
  type        = string
  default     = ""

}

variable "The preferred cache cluster availability zones" {
   
  description = "preferred_cache_cluster_azs"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b" ] 

}

variable "elasticache_subnet_group_name" {
   
  description = "The elasticache subnet group name"
  type        = string
  default     = ""

}

variable "elasticache_parameter_group_name" {
   
  description = "The elasticache subnet group name"
  type        = string
  default     = ""

}

variable "subnet_ids" {
   
  description = "The elasticache subnet group name"
  type        = list(string)
  default     = [ "subnet-03dc15dc94e5967aa", "subnet-0288aaf61f04bddac", "subnet-0e07ca691f789db64", "subnet-072e54b62a6d1944d" ]

}

variable "family" {
   
  description = "The family of the Elasticache engine"
  type        = string
  default     = "redis3.2"

}


