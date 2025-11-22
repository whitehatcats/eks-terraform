# AWS EKS Terraform

A minimal Terraform configuration for deploying an Amazon EKS cluster.  
It provisions a VPC, subnets, NAT gateway, EKS control plane, and a managed node group using official AWS modules.

## What This Project Includes
- VPC with public and private subnets  
- EKS cluster (control plane + managed node group)  
- IAM roles and OIDC provider  
- Clean, modular Terraform structure  

## Usage
```
terraform init
terraform plan
terraform apply
```

Connect kubectl:
```
aws eks update-kubeconfig --region <region> --name <cluster>
kubectl get nodes
```

## Structure
```
locals.tf
main.tf
outputs.tf
providers.tf
variables.tf
versions.tf
terraform.tfvars.example
```

## More Details
Full write-up on my portfolio website:  
**https://daniellincu.dev**
