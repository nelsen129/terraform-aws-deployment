output "bucket_name" {
    description = "The name of the bucket"
    value       = module.backend.bucket_name
}

ouitput "bucket_region" {
    description = "The AWS region the bucket resides in"
    value       = module.backend.bucket_region