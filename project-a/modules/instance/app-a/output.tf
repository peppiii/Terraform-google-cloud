output "instance_id" {
  value = "${google_compute_instance.project-a.*.instance_id}"
}

output "machine_type" {
  value = "${google_compute_instance.project-a.*.machine_type}"
}

output "name" {
  value = "${google_compute_instance.project-a.*.name}"
}



