output "vpc_id_details" {
  value = module.vpc.vpc_id
}

output "database_subnet_group" {
  value = module.vpc.database_subnet_group
}

# output "az_info" {
#   value = module.vpc.az_info
# }

# output "default_vpc" {
#   value = module.vpc.default_vpc_details
# }

# output "default_route_table_info" {
#   value = module.vpc.dafault_route_table_id
# }