variable "GCP_PROJECT" {
  description = "The GCP project to use."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "GCP_REGION" {
  description = "The GCP region to use."
  type        = string
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}
