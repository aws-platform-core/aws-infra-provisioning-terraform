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
    key            = "infra-requests/req-1777892796720/terraform.tfstate"
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


  bucket_name             = var.bucket_name
  environment             = var.environment
  versioning              = var.versioning
  encryption_enabled      = var.encryption_enabled
  website_hosting_enabled = var.website_hosting_enabled
  index_document          = var.index_document
  error_document          = var.error_document
  tags                    = var.tags
}
