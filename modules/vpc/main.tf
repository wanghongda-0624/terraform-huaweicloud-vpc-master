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
