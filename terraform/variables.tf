variable "aws_region" {
  description = "AWS region where the infrastructure will be deployed"
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Name used to identify project resources"
  type        = string
  default     = "aws-infra-automation"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}