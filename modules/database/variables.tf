# Purpose: Define input variables for the database module

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "admin_username" {
  description = "MySQL admin username"
  type        = string
}

variable "admin_password" {
  description = "MySQL admin password"
  type        = string
  sensitive   = true
}

variable "sku_name" {
  description = "SKU name for MySQL server"
  type        = string
}

variable "storage_mb" {
  description = "Storage size in MB"
  type        = number
}

variable "mysql_version" {
  description = "MySQL version"
  type        = string
  default     = "5.7"
}

variable "database_name" {
  description = "Name of the database to create"
  type        = string
}

variable "zone" {
  description = "Availability zone for MySQL server (if applicable)"
  type        = string
  default     = "1" # Cambia este valor según tus necesidades
}
