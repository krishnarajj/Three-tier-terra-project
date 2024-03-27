module "Private-security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.1"

  name        = "private-security-group"
  description = "Alow access from bastion sec group for 22 and 80 "
  vpc_id      = module.vpc.vpc_id
  ingress_with_source_security_group_id = [
    {
      from_port                = 22
      to_port                  = 22
      protocol                 = "tcp"
      description              = "SSH from bastion security group"
      source_security_group_id = module.security-group-bastion.security_group_id
    },
    {
      from_port                = 80
      to_port                  = 80
      protocol                 = "tcp"
      description              = "HTTP from bastion security group"
      source_security_group_id = module.security-group-bastion.security_group_id
    },
  ]
  egress_rules = ["all-all"]

  tags = {
    Name  = "private-Security-group"
    Stage = "dev"
  }


}