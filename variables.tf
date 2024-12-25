variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "node_group_name" {
  description = "Name of the EKS node group"
  type        = string
}

variable "node_role_arn" {
  description = "ARN of the IAM role that provides permissions for the EKS node group"
  type        = string
}

variable "vpc_id" { 
    description = "The VPC ID" 
    type = string 
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_unavailable" {
  description = "Maximum number of unavailable worker nodes during update"
  type        = number
  default     = 1
}

variable "ami_type" {
  description = "Type of Amazon Machine Image (AMI) associated with the EKS node group"
  type        = string
  default     = null
}

variable "capacity_type" {
  description = "Type of capacity associated with the EKS node group"
  type        = string
  default     = "ON_DEMAND"
}

variable "disk_size" {
  description = "Disk size in GiB for worker nodes"
  type        = number
  default     = 20
}

variable "instance_types" {
  description = "List of instance types associated with the EKS node group"
  type        = list(string)
  default     = ["t3.medium"]
}

variable "labels" {
  description = "Key-value map of Kubernetes labels"
  type        = map(string)
  default     = {}
}

variable "release_version" {
  description = "AMI version of the EKS node group"
  type        = string
  default     = null
}

variable "ec2_ssh_key" {
  description = "EC2 Key Pair name for SSH access"
  type        = string
  default     = null
}

variable "source_security_group_ids" {
  description = "Set of EC2 Security Group IDs to allow SSH access"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
