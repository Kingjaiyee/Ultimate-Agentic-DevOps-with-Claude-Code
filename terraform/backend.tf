# Backend configuration for storing Terraform state remotely in S3.
#
# Bootstrap order:
#   1. Leave this block commented out and run `terraform init` to use local state.
#   2. Run `terraform apply` to create your infrastructure (and, separately, the
#      state bucket referenced below, if it doesn't already exist).
#   3. Uncomment the `backend "s3"` block below and fill in the bucket name.
#   4. Run `terraform init -migrate-state` to migrate local state into S3.
#
# terraform {
#   backend "s3" {
#     bucket       = "REPLACE_WITH_YOUR_TERRAFORM_STATE_BUCKET"
#     key          = "portfolio-site/terraform.tfstate"
#     region       = "ap-south-1"
#     encrypt      = true
#     use_lockfile = true
#   }
# }
