remote_state {
  backend = "gcs"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    project = "terragrunt-experiment"
    bucket = "terragrunt-state-auto-generate"
    prefix = "${path_relative_to_include()}/terraform.tfstate"
    location = "asia-northeast1"
  }
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "google" {
  project = "terragrunt-experiment"
  region  = "asia-northeast1"
}
provider "google" {
  alias   = "us-central1"
  project = "terragrunt-experiment"
  region  = "us-central1"
}
EOF
}
