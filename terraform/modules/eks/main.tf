module "eks" {
  source = "terraform-aws-modules/eks/aws"

  cluster_name    = local.name
  cluster_version = "1.31"

  cluster_endpoint_public_access       = true
  cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]

  enable_irsa = true

  vpc_id                   = var.vpc_id
  subnet_ids               = var.private_subnets
  control_plane_subnet_ids = var.public_subnets


  eks_managed_node_group_defaults = {
    disk_size      = 50
    instance_types = ["t3a.large", "t3.large"]

  }


  eks_managed_node_groups = {
    default = {}
  }

  tags = local.tags
}