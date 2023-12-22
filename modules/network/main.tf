resource "google_compute_network" "this" {
  project                = var.project
  name                    = var.name
  auto_create_subnetworks = false
}
