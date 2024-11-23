locals {
  name = "eks-cluster"
  domain = "labs.mustafamirreh.com"
  region = "eu-west-2"
  tags = {
    Environment = "sandbox"
    Project     = "eks-project"
    Owner       = "Muzzy"
  }
}