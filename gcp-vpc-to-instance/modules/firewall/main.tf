resource "google_compute_firewall" "allow_ssh" {
  name    = var.firewall_name
  network = "projects/${var.GCP_PROJECT}/global/networks/${var.vpc_name}"
  project     = var.GCP_PROJECT 
  description = var.firewall_description
  direction   = var.firewall_direction
  priority    = var.firewall_priority

  allow {
    protocol = var.firewall_protocol
    ports    = var.firewall_ports
  }

  source_ranges = var.firewall_source_ranges
}


