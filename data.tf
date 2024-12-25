# Data source to get information about the EKS cluster by name
data "aws_eks_cluster" "example" {
  name = var.cluster_name
}

# Data source to get information about the EKS node group by name
data "aws_eks_node_group" "example" {
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
}

# Data source to get information about the IAM role
data "aws_iam_role" "example" {
  name = var.iam_role_name
}

# Data source to get information about subnets
data "aws_subnet_ids" "example" {
  vpc_id = var.vpc_id
}

# Data source to get information about security groups
data "aws_security_group" "example" {
  id = var.security_group_id
}
