provider "aws" {
  region = var.env_region # Specify your desired AWS region
}

module "compute" {
  source = "./compute" # the path of compute module
  env_tag = var.env_tag
  env_region = var.env_region
  vpc_cidr_block = var.vpc_cidr_block
  public_subnet_cidr_blocks_1a = var.public_subnet_cidr_blocks_1a
  public_subnet_cidr_blocks_1b = var.public_subnet_cidr_blocks_1b
  private_subnet_cidr_blocks_1a = var.private_subnet_cidr_blocks_1a
  private_subnet_cidr_blocks_1b = var.private_subnet_cidr_blocks_1b
}

/* module "network" {
  source = "./network" # the path of network module
  env_tag = var.env_tag
  env_region = var.env_region
  vpc_cidr_block = var.vpc_cidr_block
  public_subnet_cidr_blocks_1a = var.public_subnet_cidr_blocks_1a
  public_subnet_cidr_blocks_1b = var.public_subnet_cidr_blocks_1b
  private_subnet_cidr_blocks_1a = var.private_subnet_cidr_blocks_1a
  private_subnet_cidr_blocks_1b = var.private_subnet_cidr_blocks_1b

}
 */
