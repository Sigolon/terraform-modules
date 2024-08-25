variable "credentials_file" {
  description = "The path to the GCP credentials file."
  type        = string
}

variable "GCP_PROJECT" {
  type = string
}

variable "instance_name" {
  type = string
}

variable "ssh_key_zip_path" {
  type = string
}

variable "ssh_public_key_path" {
  type = string
}

variable "ssh_private_key_path" {
  description = "The path to the SSH private key used for connecting to the instance."
  type        = string
}

variable "GCP_REGION" {
  description = "The GCP region to use."
  type        = string
}

variable "zone" {
  type = string
}

variable "cpu" {
  type = number
}

variable "memory" {
  type = number
}

variable "disk_size" {
  type = number
}

variable "os_image" {
  type = string
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  # default     = "my-vpc"
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
  # default     = "my-subnet"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC."
  type        = string
  # default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "The CIDR block for the subnet."
  type        = string
  # default     = "10.0.0.0/24"
}

variable "network_ip" {
  type        = string
}

variable "firewall_name" {
  description = "The name of the firewall rule."
  type        = string
}

variable "firewall_direction" {
  description = "The direction of the firewall rule."
  type        = string
}

variable "firewall_priority" {
  description = "The priority of the firewall rule."
  type        = number
}

variable "firewall_protocol" {
  description = "The protocol for the firewall rule."
  type        = string
}

variable "firewall_ports" {
  description = "The ports for the firewall rule."
  type        = list(string)
}

variable "firewall_source_ranges" {
  description = "The source ranges for the firewall rule."
  type        = list(string)
}

variable "firewall_description" {
  description = "The description for the firewall rule."
  type        = string
}