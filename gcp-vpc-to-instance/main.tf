terraform {
  required_version = ">=1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.40.0"
    }
  }
}

module "vpc" {
  source      = "./modules/vpc"
  GCP_PROJECT = var.GCP_PROJECT
  GCP_REGION  = var.GCP_REGION
  vpc_name    = var.vpc_name
  vpc_cidr    = var.vpc_cidr
}

module "subnet" {
  source      = "./modules/vpc-subnet"
  GCP_PROJECT = var.GCP_PROJECT
  subnet_name = var.subnet_name
  GCP_REGION  = var.GCP_REGION
  subnet_cidr = var.subnet_cidr
  vpc_id      = module.vpc.vpc_id 
  depends_on = [module.vpc]
}

module "firewall" {
  source                = "./modules/firewall"
  GCP_PROJECT           = var.GCP_PROJECT
  vpc_name              = var.vpc_name
  firewall_name         = var.firewall_name
  firewall_direction    = var.firewall_direction
  firewall_priority     = var.firewall_priority
  firewall_protocol     = var.firewall_protocol
  firewall_ports        = var.firewall_ports
  firewall_source_ranges = var.firewall_source_ranges
  firewall_description  = var.firewall_description
  depends_on = [module.subnet]
}

module "compute_engine" {
  source        = "./modules/compute_engine"
  instance_name = var.instance_name
  GCP_PROJECT = var.GCP_PROJECT
  GCP_REGION = var.GCP_REGION
  zone          = var.zone
  cpu           = var.cpu
  memory        = var.memory
  disk_size     = var.disk_size
  os_image      = var.os_image
  subnet_name   = var.subnet_name
  network_ip    = var.network_ip
  depends_on = [module.firewall]
}

