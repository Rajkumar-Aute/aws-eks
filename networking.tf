module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = local.cidr

  azs              = ["${var.aws_region}a", "${var.aws_region}b", "${var.aws_region}c"]
  private_subnets  = [cidrsubnet(var.cidr, 4, 1), cidrsubnet(var.cidr, 4, 2), cidrsubnet(var.cidr, 4, 3)]
  public_subnets   = [cidrsubnet(var.cidr, 4, 5), cidrsubnet(var.cidr, 4, 6), cidrsubnet(var.cidr, 4, 7)]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}