output "instance_id" {
  value = "${google_compute_instance.app-b.*.instance_id}"
}

output "machine_type" {
  value = "${google_compute_instance.app-b.*.machine_type}"
}

output "name" {
  value = "${google_compute_instance.app-b.*.name}"
}



