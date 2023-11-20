variable "eks_role_name" {
  description = "Name for the EKS IAM role"
  default     = "eks-cluster-demo"
}

variable "eks_cluster_name" {
  description = "Name for the EKS cluster"
  default     = "demo"
}

variable "eks_node_role_name" {
  description = "Name for the EKS node IAM role"
  default     = "eks-node-group-nodes"
}

variable "network_module_path" {
  description = "Path to the network module"
  default     = "../network"
}
variable "private_subnet1_name" {
  description = "Name of the first private subnet"
  default     = "private-us-east-1a"
}

variable "private_subnet2_name" {
  description = "Name of the second private subnet"
  default     = "private-us-east-1b"
}

variable "public_subnet1_name" {
  description = "Name of the first public subnet"
  default     = "public-us-east-1a"
}

variable "public_subnet2_name" {
  description = "Name of the second public subnet"
  default     = "public-us-east-1b"
}
# modules/network/variables.tf
variable "vpc_name" {
  description = "Name for the VPC"
  default     = "main"
}

variable "igw_name" {
  description = "Name for the Internet Gateway"
  default     = "igw"
}
