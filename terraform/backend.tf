terraform {
  backend "s3" {
    bucket       = "kiran-terraform-state-783837106240"
    key          = "aws-infrastructure-automation/terraform.tfstate"
    region       = "eu-west-1"
    encrypt      = true
    use_lockfile = true
  }
}