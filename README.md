# aws_eks_node_group_terraform_module
creation of node group for eks_cluster in aws using terraform 


## How to us ethis module

```
module "eks_node_group" {
  source = "./eks_node_group"
  cluster_name    = "my-eks-cluster"
  node_group_name = "my-node-group"
  node_role_arn   = data.aws_iam_role.example.arn
  subnet_ids      = data.aws_subnet_ids.example.ids
  desired_size    = 2
  max_size        = 3
  min_size        = 1
  max_unavailable = 1
  ami_type        = "AL2_x86_64"
  capacity_type   = "ON_DEMAND"
  disk_size       = 20
  instance_types  = ["t3.medium"]
  labels          = { "env" = "production" }
  release_version = "1.21"
  ec2_ssh_key     = "my-ssh-key"
  source_security_group_ids = [data.aws_security_group.example.id]
  tags            = { Name = "my-node-group" }
}

# Use the data source to get information about the EKS node group
output "eks_node_group_id" {
  description = "The ID of the EKS node group"
  value       = data.aws_eks_node_group.example.id
}

# Use the data source to get information about the IAM role
output "iam_role_arn" {
  description = "The ARN of the IAM role"
  value       = data.aws_iam_role.example.arn
}

# Use the data source to get information about subnets
output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = data.aws_subnet_ids.example.ids
}

# Use the data source to get information about the security group
output "security_group_id" {
  description = "The ID of the security group"
  value       = data.aws_security_group.example.id
}
```