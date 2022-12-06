output "bucket_name" {
  description = "The name of the bucket"
  value       = module.backend.bucket_name
}

output "bucket_region" {
  description = "The AWS region the bucket resides in"
  value       = module.backend.bucket_region
}

output "dynamodb_table_id" {
  description = "The id of the DynamoDB table"
  value       = module.backend.dynamodb_table_id
}
