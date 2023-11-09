# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform{

    cloud {
        organization = "rumman-tibco-devops"
        workspaces {
            name = "learn-terraform-resource"
        }
    }

    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.15.0"
        }
        random = {
            source = "hashicorp/random"
        }
    }

    required_version = "~> 1.6.3"
}