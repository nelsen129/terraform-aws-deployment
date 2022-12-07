module "backend" {
  source = "../modules/backend"

  bucket_name   = "${var.name}-state-bucket"
  dynamodb_name = "${var.name}-dynamodb-lock-state"

  tags = var.tags
}

module "accounts" {
  source = "../modules/accounts"

  account_emails = var.account_emails
  account_names  = var.account_names

  role_name         = var.account_role_name
  close_on_deletion = var.account_close_on_deletion

  tags = var.tags
}
