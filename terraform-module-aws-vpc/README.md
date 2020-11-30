# terraform-module-aws-vpc

* Terraform module to create VPC with public and private subnets in 3 availability zones.
* Enabled internet access to public subnets by attaching Internet Gateway(IGW) and attaching public route table.
* Enabled egress only internet access for private subnet using NAT Gateway.

##### Reference: https://github.com/terraform-aws-modules/terraform-aws-vpc
