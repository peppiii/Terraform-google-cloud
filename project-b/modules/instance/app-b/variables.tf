variable "boot_image" {
  description = "Image ID for the instance"
  default = "centos-cloud/centos-7"
}

variable "machine_type" {
  description = "Machine type for the instance"
  default = "n1-standard-1" // 4 core 8gb 8 * 1024
}

variable "zone" {
  description = "Zone to deploy the instance into"
  default = "asia-southeast1-a"
}

variable "project-production" {
  description = "naming project"
  default = "project-apa-aja-yang-penting-cuan" 
}

variable "startup_script" {
	default = "provisioning/global.sh"
}

variable "compute_labels" {
  type    = "map"
  default = { "createdby"     = "terraform"
              "project"       = "project-b"
            }
}

variable "tags_network" {
	default = ["allow-ssh","allow-http","allow-https"]
}

variable "size_root_disk" {
	default = "20"
}

variable "type_root_disk" {
	default = "pd-standard" //pd-standard or pd-ssd
}

variable "compute_name" {
	default = "app-b"
}
 
variable "count_compute" {
	default = "1"
}

variable "count_start" {
        default = "1"
}

