output "aws_region" {
  description = "AWS region used for deployment"
  value       = var.aws_region
}

output "project_name" {
  description = "Project name"
  value       = var.project_name
}

output "web_1_public_ip" {
  description = "Public IP address of the first EC2 instance"
  value       = aws_instance.web_1.public_ip
}

output "web_2_public_ip" {
  description = "Public IP address of the second EC2 instance"
  value       = aws_instance.web_2.public_ip
}