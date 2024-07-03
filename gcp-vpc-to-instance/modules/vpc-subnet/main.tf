resource "google_compute_subnetwork" "subnet" {
  project       = var.GCP_PROJECT
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  region        = var.GCP_REGION
  network       = var.vpc_id
}

