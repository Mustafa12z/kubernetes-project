# VPC ID
variable "vpc_id" {
  description = "The ID of the VPC where the EKS cluster will be deployed"
  type        = string
}

# Private Subnets (for Worker Nodes or Fargate)
variable "private_subnets" {
  description = "The list of private subnets where the worker nodes or Fargate pods will run"
  type        = list(string)
}

# Public Subnets (for Control Plane or Load Balancers)
variable "public_subnets" {
  description = "The list of public subnets for the EKS control plane or public-facing resources"
  type        = list(string)
}
