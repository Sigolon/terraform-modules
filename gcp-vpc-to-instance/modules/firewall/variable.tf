variable "GCP_PROJECT" {
  description = "The GCP project to use."
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC."
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
