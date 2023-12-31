variable "env_tag" {
  description = "the tag name for this environment"
  type        = string
  default     = "terraform"  
}

variable "env_region" {
  description = "the region of the enviroment "
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_blocks_1a" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_blocks_1b" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_cidr_blocks_1a" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr_blocks_1b" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.4.0/24"
}