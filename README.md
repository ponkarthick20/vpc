## Inputs
vpc_cidr: CIDR block for the VPC (default: "10.0.0.0/16")

public_subnet_cidr: CIDR block for the public subnet (default: "10.0.1.0/24")

availability_zone: Availability zone for the subnet (default: "us-west-2a")

aws_region: AWS region (default: "us-west-2")

## Outputs
vpc_id: ID of the created VPC

public_subnet_id: ID of the public subnet

internet_gateway_id: ID of the Internet Gateway


## To use this module:

1. Do `git checkout`
2. Go to vpc/ and Initialize Terraform: `terraform init`
3. Review the plan: `terraform plan`
4. Apply the configuration: `terraform apply`

The module creates a VPC with a public subnet that has internet access through an Internet Gateway. All resources are properly tagged, and the state will be stored in the specified S3 bucket with locking enabled through DynamoDB.

Remember to adjust the region and availability zone in the variables according to your needs. Also, ensure you have the necessary AWS permissions to create these resources.
