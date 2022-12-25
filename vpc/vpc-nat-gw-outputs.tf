output "nat-gateways" {
  value = local.nat-gateways
}

output "ngws" {
  value = aws_nat_gateway.nat-gateways
}

# output "ngws-keys" {
#   value = local.nat-gateways-keys
# }