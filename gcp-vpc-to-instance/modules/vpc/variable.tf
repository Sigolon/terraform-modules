variable "GCP_REGION" {
  description = "The GCP region to use."
  type        = string
}

variable "GCP_PROJECT" {
  type = string
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  # default     = "my-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  # default     = "10.0.0.0/16"
}

