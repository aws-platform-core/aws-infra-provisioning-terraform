terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }

  backend "s3" {
    bucket         = "infra-provisioning-terraform-state"
    key            = "infra-requests/req-1777299485077/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "infra-provisioning-terraform-locks"
  }
}

provider "aws" {
  region = var.aws_region
}

module "stack" {
  source = "../../modules/aws-s3-bucket"


  function_name           = var.function_name
  environment             = var.environment
  versioning              = var.versioning
  lifecycle_policy_type   = var.lifecycle_policy_type
  website_hosting_enabled = var.website_hosting_enabled
  bucket_name             = var.bucket_name
  encryption_mode         = var.encryption_mode
  cors_enabled            = var.cors_enabled
  force_destroy           = var.force_destroy
  tag_cost_center         = var.tag_cost_center
  tag_owner               = var.tag_owner
  tag_project             = var.tag_project
  kms_key_arn             = var.kms_key_arn
  index_document          = var.index_document
  error_document          = var.error_document
}
