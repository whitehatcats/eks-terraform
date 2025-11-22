output "cluster_name" {
  description = "EKS cluster name."
  value       = module.eks.cluster_name
}

output "cluster_endpoint" {
  description = "EKS API server endpoint."
  value       = module.eks.cluster_endpoint
}

output "cluster_ca_certificate" {
  description = "Base64 encoded certificate authority."
  value       = module.eks.cluster_certificate_authority_data
}

output "region" {
  description = "AWS region."
  value       = var.aws_region
}

output "node_group_role_arn" {
  description = "IAM role ARN of the node group."
  value       = module.eks.eks_managed_node_groups["default"].iam_role_arn
}

