data "google_compute_network" "my-network" {
  name    = "${var.subnetwork}"
  project = "${var.project-production}"
}

resource "google_compute_instance" "project-a" {
  name         = "${var.compute_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"
  project      = "${var.project-production}"

  tags         = ["${var.tags_network}"]

  boot_disk {
    initialize_params {
      image = "${var.boot_image}"
      size  = "${var.size_root_disk}"
      type  = "${var.type_root_disk}"
    }
  }

  network_interface {
    
    #network = "${data.google_compute_network.my-network.network}"
    subnetwork = "${data.google_compute_network.my-network.subnetworks_self_links[0]}"
    subnetwork_project = "${data.google_compute_network.my-network.project}"
    access_config {}
  }

  labels = "${var.compute_labels}"  

  metadata_startup_script = "${file(var.startup_script)}"
 
  scheduling {
    on_host_maintenance = "MIGRATE"
    automatic_restart   = "true"
  }

#  service_account {
#    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
#  }
}

