variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  default     = "westeurope"
}

variable "project_name" {
  description = "The name of the project"
  default     = "iaac"
}

variable "db_admin_username" {
  description = "The username for the MySQL database admin"
  default     = "mysqladmin"
}

variable "db_admin_password" {
  description = "The password for the MySQL database admin"
  default     = "P@ssw0rd1234!"
}

variable "db_name" {
  description = "The name of the MySQL database"
  default     = "mydatabase"
}