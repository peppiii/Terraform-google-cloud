## Introduction
This is schema layout in GCP with Terraform

## Table of contents
<!--ts-->
   * [Schema](#schema)
   * [Install](#install)
   * [Deploy](#deploy)
   * [Noted](#noted)
<!--te-->

## Schema
this is schema layout in GCP with Terraform
```
├── terraform-google-cloud
    ├── project-a
        ├── modules
            ├── instance
                ├── app-a
                    ├── main.tf
                    ├── output.tf
                    ├── variabel.tf
    
    ├── project-b
        ├── modules
            ├── instance
                ├── app-b                
                    ├── main.tf
                    ├── output.tf
                    ├── variabel.tf
    ├── provisioning
         └── installasi shell script
    
    ├── main.tf

```

## Install
```bash
$ sudo apt-get update
$ wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
$ unzip terraform_0.12.24_linux_amd64.zip
$ mv terraform /usr/local/bin
$ terraform -v
```

## Deploy
```bash
$ git clone git@github.com:peppiii/Terraform-google-cloud.git
$ cd Terraform-google-cloud
$ terraform init
$ terraform plan
$ terraform apply
```

## Noted
the result of terraform I save in the cloud, why? because all infra or Devops teams will be able to control the infrastructure
