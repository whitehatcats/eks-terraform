variable "aws_region" {
  description = "AWS region where EKS will be created."
  type        = string
  default     = "eu-central-1" # Frankfurt – change if you want
}

variable "project" {
  description = "Short name of the project used for tagging."
  type        = string
  default     = "eks-portfolio"
}

variable "cluster_name" {
  description = "EKS cluster name."
  type        = string
  default     = "eks-portfolio"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones to use."
  type        = list(string)
  default = [
    "eu-central-1a",
    "eu-central-1b",
    "eu-central-1c",
  ]
}

variable "public_subnets" {
  description = "Public subnet CIDRs."
  type        = list(string)
  default = [
    "10.0.0.0/24",
    "10.0.1.0/24",
    "10.0.2.0/24",
  ]
}

variable "private_subnets" {
  description = "Private subnet CIDRs."
  type        = list(string)
  default = [
    "10.0.10.0/24",
    "10.0.11.0/24",
    "10.0.12.0/24",
  ]
}

variable "node_instance_types" {
  description = "Instance types for EKS managed node group."
  type        = list(string)
  default     = ["t3.small"]
}

variable "node_desired_capacity" {
  description = "Desired number of worker nodes."
  type        = number
  default     = 2
}

variable "node_min_size" {
  description = "Minimum number of worker nodes."
  type        = number
  default     = 1
}

variable "node_max_size" {
  description = "Maximum number of worker nodes."
  type        = number
  default     = 3
}

variable "enable_nat_gateway" {
  description = "Whether to enable NAT Gateway (costs money!)."
  type        = bool
  default     = true
}
