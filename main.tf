# Create VPC
# resource "huaweicloud_vpc_v1" "this" {
#   count = var.vpc_id == "" ? 1 : 0
#   name  = var.name
#   cidr  = var.cidr
# }

# Create Subnet
# resource "huaweicloud_vpc_subnet_v1" "this" {
#   count             = length(var.subnets)
#   name              = lookup(var.subnets[count.index], "name", null)
#   cidr              = lookup(var.subnets[count.index], "cidr", null)
#   gateway_ip        = lookup(var.subnets[count.index], "gateway_ip", null)
#   availability_zone = lookup(var.subnets[count.index], "availability_zone", null)
#   primary_dns       = lookup(var.subnets[count.index], "primary_dns", null)
#   secondary_dns     = lookup(var.subnets[count.index], "secondary_dns", null)
#   vpc_id            = var.vpc_id == "" ? join("", huaweicloud_vpc_v1.this.*.id) : var.vpc_id
# }

#Configure the HuaweiCloud Provider
provider "huaweicloud" {
     region = var.region
     access_key = var.ak
     secret_key = var.sk
  }
module "vpc" {
  source = "./modules/vpc"
  name = var.name
  ak=var.ak
  sk=var.sk
  region = var.region
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
