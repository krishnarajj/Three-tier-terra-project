module "ec2-private" {
  depends_on = [module.vpc]
  source     = "terraform-aws-modules/ec2-instance/aws"
  version    = "5.6.0"

  name = local.instance_name
  ami  = data.aws_ami.amzlinux2.id


  instance_type = "t2.micro"
  key_name      = var.instance_keypair

  vpc_security_group_ids = [module.Private-security-group.security_group_id]
  for_each               = toset(["0", "1"])
  subnet_id              = element(module.vpc.private_subnets, tonumber(each.key))

  user_data = file("${path.module}/app1_install.sh")

  tags = {
    Terraform   = "Three-tier"
    Environment = "dev"

  }



}
locals {
  instance_name = "${var.ec2private_name}-${var.Environment}"
}