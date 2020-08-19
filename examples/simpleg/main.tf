module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "9.0.0"
  # insert the 6 required variables here
  org_id            = var.organization_id
  billing_account   = var.billing_account
  credentials_path  = local.credentials_file_path
  create_group      = true
  group_name        = var.project_group_name
  api_sa_group      = var.api_sa_group
}
resource "gsuite_group" "example" {
  email       = "example@domain.ext"
  name        = "example@domain.ext"
  description = "Example group"
}
