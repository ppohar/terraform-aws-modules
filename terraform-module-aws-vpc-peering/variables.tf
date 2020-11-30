#############################################################################
# VARIABLES
#############################################################################

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "peering_users" {
  type = list(string)
}

variable "source_profile" {
  type = string
}

variable "destination_profile" {
  type = string
}

variable "source_vpc_id" {
  type = string
}

variable "destination_vpc_id" {
  type = string
}

variable "peer_role_arn" {
  type = string
}

#############################################################################
# PROVIDERS
#############################################################################

provider "aws" {
  version = "~> 2.0"
  region  = var.region
  alias   = "source"
  profile = var.source_profile
}

provider "aws" {
  version = "~> 2.0"
  region  = var.region
  alias   = "destination"
  profile = var.destination_profile
}

provider "aws" {
  version = "~> 2.0"
  region  = var.region
  alias   = "peer"
  profile = var.source_profile
  assume_role {
    role_arn = var.peer_role_arn
  }
}
