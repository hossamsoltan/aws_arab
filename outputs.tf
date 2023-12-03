output "aws_arab_instance1_ip" {
  value = module.compute.aws_arab_instance0_ip
}

output "aws_arab_instance0_ip" {
  value = module.compute.aws_arab_instance1_ip
}