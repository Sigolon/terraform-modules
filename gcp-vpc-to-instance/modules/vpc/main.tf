resource "google_compute_network" "vpc" {
  project                 = var.GCP_PROJECT
  name                    = var.vpc_name
  auto_create_subnetworks = false
}



