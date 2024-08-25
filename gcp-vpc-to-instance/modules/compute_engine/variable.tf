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

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "network_ip" {
  type        = string
}