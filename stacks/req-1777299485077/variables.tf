variable "aws_region" {
  type = string
}

variable "function_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "versioning" {
  type = bool
}

variable "lifecycle_policy_type" {
  type = string
}

variable "website_hosting_enabled" {
  type = bool
}

variable "bucket_name" {
  type = string
}

variable "encryption_mode" {
  type = string
}

variable "cors_enabled" {
  type = bool
}

variable "force_destroy" {
  type = bool
}

variable "tag_cost_center" {
  type = string
}

variable "tag_owner" {
  type = string
}

variable "tag_project" {
  type = string
}

variable "kms_key_arn" {
  type = string
}

variable "index_document" {
  type = string
}

variable "error_document" {
  type = string
}