locals {
  tags = {
    Project     = var.project
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}

