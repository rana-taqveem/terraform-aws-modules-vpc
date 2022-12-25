
variable "private-subnets" {
  description = "private subnets"
  type        = map(any)
  default = {
    sn-p-1 = {
      az    = "us-east-1a"
      cidr  = "192.168.1.0/24",
      index = 1
    }
    sn-p-2 = {
      az    = "us-east-1b"
      cidr  = "192.168.2.0/24",
      index = 2
    }
    sn-p-1 = {
      az    = "us-east-1c"
      cidr  = "192.168.3.0/24",
      index = 3
    }
  }
}