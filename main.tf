terraform {
  backend "gcs" {
    bucket  = "management-rnd"
    prefix  = "production"
  }
}

module "instance-app-a" {
   source = "./project-a/modules/instance/app-a/"
}

