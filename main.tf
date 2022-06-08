provider "google" {
  credentials = file("./playground-s-11-8449f1ae-fac76657fe73.json")

  project = "playground-s-11-8449f1ae"
  region  = "europe-west1"
  zone    = "europe-west1-b"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
} 

resource "google_compute_instance" "vm_instance" {
  name = "terraform-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}

resource "google_compute_address" "vm_static_ip" {
  name = "terraform-static-ip"
}

terraform {
    backend "gcs" {
        bucket = "terraform-playground-s-11-8449f1ae"
        prefix = "terraform1"
        credentials = "playground-s-11-8449f1ae-fac76657fe73.json" 
   }
}
