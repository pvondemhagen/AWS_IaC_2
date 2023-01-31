terraform {

  cloud {
    organization = "pvondemhagen-org"
    workspaces {
      name = "learn-tfc-aws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-west-2"
}


resource "aws_instance" "app_server" {

  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {

    git_commit           = "1d2a94b854949e07e4f174ebf7f33b7f5894fbb0"
    git_file             = "main.tf"
    git_last_modified_at = "2023-01-27 04:49:43"
    git_last_modified_by = "pvondemhagen@yahoo.com"
    git_modifiers        = "pvondemhagen"
    git_org              = "pvondemhagen"
    git_repo             = "AWS_IaC_2"
    yor_trace            = "7793e1bb-a5f6-4505-9ad9-fbf9ffefc6cd"
  }

}
