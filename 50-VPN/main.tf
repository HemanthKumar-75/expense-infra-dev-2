resource "aws_key_pair" "open_vpn" {
  key_name   = "openvpn"
  public_key = file("~/.ssh/openvpn.pub")
}

module "vpn" {
  source = "terraform-aws-modules/ec2-instance/aws"
  key_name = aws_key_pair.open_vpn.key_name
  name          = local.resource_name
  ami           = data.aws_ami.VPN_id.id
  instance_type = "t2.micro"
  #   key_name               = "user1"
  #   monitoring             = true
  vpc_security_group_ids = [local.vpn_sg_id]
  subnet_id              = local.public_subnet_id

  tags = merge(
    var.common_tags,
    var.vpn_tags,
    {
        Name = local.resource_name
    }
  )
}