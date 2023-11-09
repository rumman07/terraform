terraform {
    backend "remote" {
        organization = "rumman-tibco-devops"
        workspaces {
            name = "Example-Workspace"
        }
    }
    
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-west-1"

}

resource "aws_instance" "tutorial_server" {
    ami           = "ami-0646513672e4fb341"
    instance_type = "t2.micro"

    tags = {
        Name = var.instance_name
    }
}
