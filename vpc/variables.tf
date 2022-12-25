
variable "ENV" {
  description = "Envirnoment for VPC"
  type        = string
  default     = "dev"
}


variable "vpc-cidr" {

  description = "VPC CIDR range"
  type        = string
  default     = "192.168.0.0/16"
}

variable "vpc-name" {

  description = "main VPC"
  type        = string
  default     = "main-vpc"
}

variable "enable-dns-support" {
  description = "enable DNS support"
  type        = bool
  default     = false
}

variable "enable-dns-hostnames" {
  description = "enable DNS Hostname"
  type        = bool
  default     = false
}