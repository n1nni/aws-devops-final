# ===============================
# Database variables
# ===============================
variable "db_username" {
  description = "Username for the RDS MySQL database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Password for the RDS MySQL database"
  type        = string
  sensitive   = true
  default     = "Password123!"
}

# ===============================
# AWS region
# ===============================
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-north-1"
}

# ===============================
# VPC module reference
# ===============================
variable "vpc_id" {
  description = "ID of the existing VPC"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet IDs"
  type        = list(string)
}

variable "private_subnets" {
  description = "List of private subnet IDs"
  type        = list(string)
}
