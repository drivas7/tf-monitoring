resource "google_compute_instance" "example" {
  count        = var.instance_count
  name         = "example-${count.index + 1}"
  machine_type = "f1-micro"
  zone         = "us-central1-a"
  tags         = ["http-server", "https-server"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"  # Ubuntu 20.04 LTS image
    }
  }

  network_interface {
    network = "default"
  }
}
