
variable "enable_dns_support" {
  description = "Allow DNS support in the VPC."
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Allow DNS hostnames in the VPC."
  type        = bool
  default     = true
}

variable "vpc_name" {
  description = "Name tag for the VPC."
  type        = string
}

variable "igw_name" {
  description = "Name tag for the Internet Gateway."
  type        = string
}


variable "public_subnet_name" {
  description = "name for subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "name for subnet"
  type        = string
}


variable "route_table_name" {
  description = "Name for the route table."
  type        = string
}

variable "sg_name" {
  description = "Security group name"
  type        = string
}