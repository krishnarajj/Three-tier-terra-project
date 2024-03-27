module "ec2-public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.0"

  name = "${var.ec2bastion-name}-${var.Environment}-${var.region}"
  ami  = data.aws_ami.amzlinux2.id

  instance_type = "t2.micro"
  key_name      = var.instance_keypair

  vpc_security_group_ids      = [module.security-group-bastion.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Terraform   = "Three-tier"
    Environment = "dev"
  }






}