# modules/network/network.tf sets up networking resources
module "network" {
  source = "./modules/network"
  
  vpc_name            = var.vpc_name
  igw_name            = var.igw_name
  private_subnet1_name = var.private_subnet1_name
  private_subnet2_name = var.private_subnet2_name
  public_subnet1_name  = var.public_subnet1_name
  public_subnet2_name  = var.public_subnet2_name
}

# modules/eks/eks.tf sets up resources related to Amazon EKS
module "eks" {
  source = "./modules/eks"
  vpc_name            = var.vpc_name
  igw_name            = var.igw_name
  eks_role_name       = var.eks_role_name
  eks_cluster_name    = var.eks_cluster_name
  eks_node_role_name  = var.eks_node_role_name
  private_subnet1_name = var.private_subnet1_name
  private_subnet2_name = var.private_subnet2_name
  public_subnet1_name  = var.public_subnet1_name
  public_subnet2_name  = var.public_subnet2_name
}
