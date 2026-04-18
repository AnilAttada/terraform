terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.36.0"
    }
  }
  backend "s3" {
    bucket = "anil-remote-state"
    key    = "provisioner"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true  #s3 native locking
  }
}

provider "aws" {
  # Configuration options
}