variable "location" {
  description = "Azure region for all resources"
  type        = string
  default     = "eastus"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "project" {
  description = "Project name used for resource naming"
  type        = string
  default     = "foodadvisor"
}

variable "admin_ssh_public_key" {
  description = "SSH public key content for VM admin access"
  type        = string
  sensitive   = true
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH into the VM (use your IP)"
  type        = string
  default     = "0.0.0.0/0"
}

variable "vm_size" {
  description = "Azure VM size (Standard_B1s is free-tier eligible)"
  type        = string
  default     = "Standard_B1s"
}
