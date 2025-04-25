terraform {
  backend "s3" {}

  required_version = "~> 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "eu-west-2"
  default_tags {
    tags = {
	    #Project     = "pims-abondoned-visits"	
      Envionment  = "${var.env}"
      Managed_by  = "terraform"
      terraform-base-path = "terraform-aws-monitoring-alerting"
    }
  }
}
