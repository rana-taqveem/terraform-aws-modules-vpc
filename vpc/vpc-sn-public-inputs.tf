
variable "public-subnets" {
  description = "Public subnets"
  type        = map(any)
  default = {
    sn-pb-1 = {
      az    = "us-east-1a"
      cidr  = "192.168.1.0/24",
      index = 1
    }
    sn-pb-2 = {
      az    = "us-east-1b"
      cidr  = "192.168.2.0/24",
      index = 2
    }
    sn-pb-1 = {
      az    = "us-east-1c"
      cidr  = "192.168.3.0/24",
      index = 3
    }
  }
}