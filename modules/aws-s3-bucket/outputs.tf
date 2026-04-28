# output "bucket_name" {
#   value = aws_s3_bucket.this.id
# }

# output "website_endpoint" {
#   value = var.website_hosting_enabled && length(aws_s3_bucket_website_configuration.this) > 0
#     ? aws_s3_bucket_website_configuration.this[0].website_endpoint
#     : null
# }