output "Bastion_security_group_id" {
  description = "The ID of the security group"
  value       = module.security-group-bastion.security_group_id
}

output "Bastion_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.security-group-bastion.security_group_vpc_id
}


output "Bastion_security_group_name" {
  description = "The name of the security group"
  value       = module.security-group-bastion.security_group_name
}

# private security group outputs

output "Private_security_group_id" {
  description = "The ID of the security group"
  value       = module.Private-security-group.security_group_id
}

output "Private_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.Private-security-group.security_group_vpc_id
}


output "Private_security_group_name" {
  description = "The name of the security group"
  value       = module.Private-security-group.security_group_name
}

