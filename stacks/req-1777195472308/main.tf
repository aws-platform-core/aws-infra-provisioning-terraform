terraform {
    required_version = ">= 1.5.0"
  }
  
  module "stack" {
    source = "../../modules/aws-s3-bucket"
  
    bucket_name = var.bucket_name
  environment = var.environment
  versioning = var.versioning
  }
  