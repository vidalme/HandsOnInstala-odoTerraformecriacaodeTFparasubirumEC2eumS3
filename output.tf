output "vpc_id" {
  description = "ip public da ec2"
  value       = aws_instance.ubuntu24.public_ip
}