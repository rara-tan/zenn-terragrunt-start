# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "gcs" {
    bucket = "terragrunt-state-auto-generate"
    prefix = "network/terraform.tfstate"
  }
}