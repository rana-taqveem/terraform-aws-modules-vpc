
# VPC variables -----------------------------------------------------------------------------------------------------------
variable "vpc-public-cidr" {

  description = "VPC Public CIDR"
  type        = string
  default     = "0.0.0.0/0"
}
