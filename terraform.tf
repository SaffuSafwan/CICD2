terraform {

  backend "s3" {
    bucket         = "my-terraaform-bucket"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    encrypt        = true
  }

  required_providers {
    aws = {
        source  = "hashicorp/aws"
        version = "~> 6.0"
    }
  }
}