module "security-group-bastion" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.1"

  name                = "Bastion-Security-group"
  description         = "Alow ssh from anywhere to bastion host"
  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["ssh-tcp"]
  egress_rules        = ["all-all"]
  tags = {
    Name  = "Bastion-Security-group"
    Stage = "dev"
  }


}