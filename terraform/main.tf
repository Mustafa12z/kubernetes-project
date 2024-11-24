module "eks" {
  source     = "./modules/eks"
  vpc_id = module.vpc.vpc_id
  private_subnets = [module.vpc.private_subnet_a_id, module.vpc.private_subnet_b_id, module.vpc.private_subnet_c_id]
  public_subnets = [module.vpc.public_subnet_a_id, module.vpc.public_subnet_b_id, module.vpc.public_subnet_c_id]
}

module "irsa" {
  source            = "./modules/irsa"
  oidc_provider_arn = module.eks.oidc_provider_arn
}

module "vpc" {
  source              = "./modules/vpc"
  sg_name             = "eks-sg"
  private_subnet_name = "eks-private"
  public_subnet_name  = "eks-public"
  vpc_name            = "eks-vpc"
  igw_name            = "eks-igw"
  route_table_name    = "eks-rt"
}