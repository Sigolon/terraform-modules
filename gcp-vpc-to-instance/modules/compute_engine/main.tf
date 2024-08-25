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

  metadata = {
    ssh-keys = "sigolon:${file(var.ssh_public_key_path)}"
  }
}

resource "null_resource" "provision_instance" {
  depends_on = [google_compute_instance.instance]

  provisioner "file" {
    source      = var.ssh_key_zip_path
    destination = "/tmp/ssh_key.zip"

    connection {
      type        = "ssh"
      user        = "username"
      private_key = file(var.ssh_private_key_path) 
      host        = google_compute_instance.instance.network_interface[0].network_ip
    }
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "sigolon"
      private_key = file(var.ssh_private_key_path)
      host        = google_compute_instance.instance.network_interface[0].network_ip
    }

    inline = [
      "sudo apt update",
      "sudo apt install zip",
      "sudo git clone https://github.com/Sigolon/terraform-modules",
    ]
  }
}
