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

  
  
  
  
  
  
  

}
