variable "GCP_PROJECT" {
  type = string
}

variable "instance_name" {
  type = string
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