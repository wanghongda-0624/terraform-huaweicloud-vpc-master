variable "vpc_id" {
  description = "The ID of the VPC"
  default     = ""
}

# variable "name" {
#   description = "The name of the VPC"
#   default     = ""
# }

# variable "cidr" {
#   description = "The CIDR of the VPC"
#   default     = ""
# }

variable "subnets" {
  description = "List of subnets in the VPC"
  type = list(object({
    name          = string
    cidr          = string
    gateway_ip    = string
    primary_dns   = string
    secondary_dns = string
  }))
  default = []
}

variable "region" {
  description = ""
  default     = ""
}

variable "ak" {
  description = ""
  default     = ""
}

variable "sk" {
  description = ""
  default     = ""
}

variable "name" {
  description = ""
  default     = ""
}

variable "cidr" {
  description = ""
  default     = "192.168.0.0/17"
}

variable "bucket" {
  description = ""
  default     = "terraform-state-obs"
}

variable "key" {
  description = ""
  default     = "myproject/terraform.tfstate"
}

variable "endpoint" {
  description = ""
  default     = "obs.cn-east-2.myhuaweicloud.com"
}