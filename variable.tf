variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "VPC CIDR Block"
  type = string
}

variable "public-sub-1-cidr" {
  default = "10.0.0.0/24"
  description = "Public Subnet 1 CIDR Block"
  type = string
}

variable "public-sub-2-cidr" {
  default = "10.0.1.0/24"
  description = "Public Subnet 2 CIDR Block"
  type = string
}

variable "private-sub-1-cidr" {
  default = "10.0.2.0/24"
  description = "Private Subnet 1 CIDR Block"
  type = string
}

variable "private-sub-2-cidr" {
  default = "10.0.3.0/24"
  description = "Private Subnet 2 CIDR Block"
  type = string
}