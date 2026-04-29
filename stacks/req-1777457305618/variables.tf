variable "aws_region" {
  type = string
}

variable "bucket_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "versioning" {
  type = bool
}

variable "encryption_enabled" {
  type = bool
}

variable "website_hosting_enabled" {
  type = bool
}

variable "index_document" {
  type = string
}

variable "error_document" {
  type = string
}

variable "tags" {
  type = map(any)
}