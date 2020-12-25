terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      #version = "3.5.0"
    }
  }
}

provider "google" {
  # Path to key download from google cloud
  credentials = file("./google-cloud-key/my-learning-project-299612-7fb304763410.json")
  # project ID
  project = "my-learning-project-299612"
  # Khu vuc
  region  = "asia-southeast1"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_instance" "default" {
  count = 2
  name         = "test${count.index}"
  machine_type = "e2-standard-2"
  zone         = "asia-southeast1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  # // Local SSD disk
  # scratch_disk {
  #   interface = "SCSI"
  # }

  network_interface {
    network = google_compute_network.vpc_network.name

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}