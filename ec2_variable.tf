variable "ec2bastion-name" {

  description = "Bastion host launched in public for pribvete ssh"
  type        = string
  default     = "Bastion_host"

}

variable "ec2private_name" {

  description = "private instance in private subnet"
  type        = string
  default     = "private_instance"

}
variable "instance_keypair" {
  description = "AWS EC2 Key pair that need to be associated with EC2 Instance"
  type        = string
  default     = "terraform-key"
}

variable "Environment" {

  description = "dev"
  type        = string
  default     = "dev"

}