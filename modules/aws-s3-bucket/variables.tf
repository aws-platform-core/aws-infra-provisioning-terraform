variable "bucket_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "versioning" {
  type = bool
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "encryption_enabled" {
  type    = bool
  default = true
}