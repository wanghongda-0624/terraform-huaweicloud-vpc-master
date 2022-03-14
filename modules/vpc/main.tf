# Configure the HuaweiCloud Provider
provider "huaweicloud" {
     region = var.region
     access_key = var.ak
     secret_key = var.sk
}

# Create a VPC
resource "huaweicloud_vpc" "example" {
    name = var.name
    cidr = var.cidr
  }

  terraform {
    backend "s3"{
     access_key = var.ak
     secret_key = var.sk
     bucket = var.bucket
     key    = var.key
     region = var.region
     endpoint = var.endpoint 
  }
}
