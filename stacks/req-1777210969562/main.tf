terraform {
    required_version = ">= 1.5.0"
  }
  
  module "stack" {
    source = "../../modules/aws-lambda-function"
  
    function_name = var.function_name
  environment = var.environment
  versioning = var.versioning
  }
  