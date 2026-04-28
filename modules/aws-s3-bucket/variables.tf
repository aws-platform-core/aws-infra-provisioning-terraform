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

variable "website_hosting_enabled" {
  type    = bool
  default = false
}

variable "index_document" {
  type    = string
  default = ""
}

variable "error_document" {
  type    = string
  default = ""
}