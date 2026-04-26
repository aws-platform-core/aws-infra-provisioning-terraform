terraform {
    required_version = ">= 1.5.0"
  }
  
  module "stack" {
    source = "../../modules/aws-s3-bucket"
  
    function_name = var.function_name
  environment = var.environment
  versioning = var.versioning
  cors = var.cors
  bucket_name = var.bucket_name
  }
  