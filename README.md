# Terraform AWS ECS Environment

This Terraform project sets up a complete, cost-optimized, and scalable web application environment on AWS using ECS Fargate.

## Features

- **VPC**: Public/private subnet architecture with AZ redundancy.
- **NAT**: Cost-effective NAT Instance for private subnet outbound traffic.
- **Route53**: Public and private hosted zones for DNS management.
- **Security**: WAF, ACM for SSL, and fine-grained Security Groups.
- **Application**: ECS Fargate with ALB, CloudFront for static content.
- **Database**: RDS MySQL (cost-optimized) with RDS Proxy.
- **Operations**: CloudWatch Logs, EventBridge, and Systems Manager Parameter Store.
- **Development**: Bastion host for secure access and S3 for assets.

## Prerequisites

- [Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli) installed.
- AWS account and configured credentials.
- A registered domain name.

## Setup

1. **Clone the repository:**
   ```sh
   git clone <repository-url>
   cd terraform-aws-ecs
   ```

2. **Create a `terraform.tfvars` file:**
   Copy the example file and update the values for your environment.
   ```sh
   cp terraform.tfvars.example terraform.tfvars
   ```
   **`terraform.tfvars`**
   ```hcl
   env                     = "prod"
   domain_name             = "your-domain.com"
   private_zone_name       = "your-domain.local"
   db_username             = "your-db-user"
   db_password             = "your-secure-db-password"
   ```

## Deployment

1. **Initialize Terraform:**
   ```sh
   terraform init
   ```

2. **Plan the deployment:**
   ```sh
   terraform plan
   ```

3. **Apply the changes:**
   ```sh
   terraform apply
   ```

## Cleanup

To destroy all resources created by this project:
```sh
terraform destroy
```

## File Structure

- **`main.tf`**: Contains the main resource definitions for the infrastructure.
- **`variables.tf`**: Defines all the input variables.
- **`outputs.tf`**: Specifies the output values after deployment.
- **`terraform.tfvars.example`**: Example variable values.
- **`README.md`**: This file.
