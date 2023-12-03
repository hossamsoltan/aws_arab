output "aws_arab_instance1_ip" {
  value = aws_instance.aws_arab_instance[0].public_ip
}

output "aws_arab_instance0_ip" {
  value = aws_instance.aws_arab_instance[1].public_ip
}