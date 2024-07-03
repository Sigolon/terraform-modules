resource "google_compute_instance" "instance" {
  name         = var.instance_name
  project      = var.GCP_PROJECT 
  zone         = var.zone
  machine_type = "custom-${var.cpu}-${var.memory}"

  boot_disk {
    initialize_params {
      image = var.os_image
      size  = var.disk_size
    }
  }

  network_interface {
    access_config {
      network_tier = "PREMIUM"
    }

    network_ip  = var.network_ip # 子網內的 IP
    queue_count = 0
    stack_type  = "IPV4_ONLY"
    subnetwork  = "projects/${var.GCP_PROJECT}/regions/${var.GCP_REGION}/subnetworks/${var.subnet_name}"
  }
}