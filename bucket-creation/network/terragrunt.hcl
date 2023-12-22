locals {
  common = read_terragrunt_config(find_in_parent_folders("common.hcl"))
  region = read_terragrunt_config(find_in_parent_folders("region.hcl"))
}

include "root" {
  path = find_in_parent_folders()
}
terraform {
  source = "../../modules/network"
}

inputs = merge(
  {
    name = local.common.locals.service_name
    region = local.region.locals.main_region
    project = local.common.locals.project_id
  }
)
