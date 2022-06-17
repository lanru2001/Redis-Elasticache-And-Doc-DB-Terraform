# S3 remote state 
terraform {

  backend "s3" {
    bucket         = "tf-remote-bkt3"
    key            = "project/uat/redis"
    region         = "us-east-1"
    dynamodb_table = "cw_locking_dynamodb"

  }
}

module "Redis_Cluster" {
    
  description                  = "uat redis group"
  replication_group_id         = "uat-authtokens"
  engine                       = "redis"
  engine_version               = "3.2.10"
  node_type                    = "cache.m3.medium"
  num_cache_clusters           = 2
  parameter_group_name         = aws_elasticache_parameter_group.uat_redis_parameter_group.name
  port                         = 6379
  #az_mode                     = "single-az"
  security_group_ids           =  [ "sg-0e21285b96d9869d1" ]
  subnet_group_name            = aws_elasticache_subnet_group.uat_redis_subnet_group.name
  snapshot_window              = "03:00-04:00"
  snapshot_retention_limit     = 1
  apply_immediately            = "true"
  auto_minor_version_upgrade   = true
  maintenance_window           = "sun:01:00-sun:03:00"
  automatic_failover_enabled   = false
  preferred_cache_cluster_azs  = ["us-east-1a", "us-east-1b" ]    

}
