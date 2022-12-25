#
# Security Groups --------------------------------------------------------------------------------------------------------------------
variable "sg-http-entry" {
  description = "Https security group entry"
  type = object({
    type      = string
    protocol  = string
    portStart = number
    portEnd   = number
    cidr      = string
  })
  default = {
    type      = "http"
    protocol  = "tcp"
    portStart = 80
    portEnd   = 80
    cidr      = "0.0.0.0/0"
  }
}


variable "sg-ssh-entry" {
  description = "SSH security group entry"
  type = object({
    type      = string
    protocol  = string
    portStart = number
    portEnd   = number
    cidr      = string
  })
  default = {
    type      = "ssh"
    protocol  = "tcp"
    portStart = 22
    portEnd   = 22
    cidr      = "0.0.0.0/0"
  }
}

variable "sg-https-entry" {
  description = "HTTPS Security group entry"
  type = object({
    type      = string
    protocol  = string
    portStart = number
    portEnd   = number
    cidr      = string
  })
  default = {
    type      = "https"
    protocol  = "tcp"
    portStart = 443
    portEnd   = 443
    cidr      = "0.0.0.0/0"
  }
}


variable "sg-public-name" {
  description = "Public security group name"
  type        = string
  default     = "public sg"
}
