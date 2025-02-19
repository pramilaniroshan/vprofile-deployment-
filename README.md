# Terraform AWS Provider - README

## Overview
This repository provides a Terraform configuration for deploying resources on AWS using the Terraform AWS provider.

## Prerequisites
Ensure you have the following installed before using this Terraform configuration:

- [Terraform](https://www.terraform.io/downloads.html) (>= 1.0.0)
- [AWS CLI](https://aws.amazon.com/cli/) (for authentication and resource management)
- AWS credentials configured (`~/.aws/credentials` or environment variables)

## Installation
1. Install Terraform by following the official [installation guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
2. Configure AWS credentials:
   ```sh
   aws configure
   ```
3. Clone this repository

## Usage
1. Initialize Terraform:
   ```sh
   terraform init
   ```
2. Preview the execution plan:
   ```sh
   terraform plan
   ```
3. Apply the configuration:
   ```sh
   terraform apply
   ```
4. Destroy resources when no longer needed:
   ```sh
   terraform destroy
   ```

## Example Configuration
```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"
}
```

## Variables
| Variable | Description | Default |
|----------|-------------|---------|
| `region` | AWS region to deploy resources | `us-east-1` |
| `instance_type` | EC2 instance type | `t2.micro` |

## Outputs
| Output | Description |
|--------|-------------|
| `instance_id` | ID of the created EC2 instance |

## License
This project is licensed under the MIT License.

## Authors
- Pramila Niroshan

