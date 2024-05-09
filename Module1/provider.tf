terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# terraform {
#   required_version = "~> 1.7.0"
# }
# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "5.41.0" # Specify the version constraint here
#     }
#   }
# }

provider "aws" {
  region = var.region
}
