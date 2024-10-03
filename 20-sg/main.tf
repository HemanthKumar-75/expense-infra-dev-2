module "mysql_sg" {
  source = "git::https://github.com/HemanthKumar-75/terraform-aws-security-group.git?ref=main"
  # source = "../../terraform-aws-security-group"
  envinronment = var.envinronment
  project_name = var.project
  security_group = "Mysql"
  vpc_id = local.vpc_id.value
  common_tags = var.common_tags
  sg_tags = var.sg_tags
}

module "backend_sg" {
  source = "git::https://github.com/HemanthKumar-75/terraform-aws-security-group.git?ref=main"
  # source = "../../terraform-aws-security-group"
  envinronment = var.envinronment
  project_name = var.project
  security_group = "Backend"
  vpc_id = local.vpc_id.value
  common_tags = var.common_tags
  sg_tags = var.backend_sg_tags
}

module "frontend_sg" {
  source = "git::https://github.com/HemanthKumar-75/terraform-aws-security-group.git?ref=main"
  # source = "../../terraform-aws-security-group"
  envinronment = var.envinronment
  project_name = var.project
  security_group = "frontend"
  vpc_id = local.vpc_id.value
  common_tags = var.common_tags
  sg_tags = var.frontend_sg_tags
}

module "bastion_sg" {
  source = "git::https://github.com/HemanthKumar-75/terraform-aws-security-group.git?ref=main"
  # source = "../../terraform-aws-security-group"
  envinronment = var.envinronment
  project_name = var.project
  security_group = "bastion"
  vpc_id = local.vpc_id.value
  common_tags = var.common_tags
  sg_tags = var.bastion_sg_tags
}

module "ansible_sg" {
  source = "git::https://github.com/HemanthKumar-75/terraform-aws-security-group.git?ref=main"
  # source = "../../terraform-aws-security-group"
  envinronment = var.envinronment
  project_name = var.project
  security_group = "ansible"
  vpc_id = local.vpc_id.value
  common_tags = var.common_tags
  sg_tags = var.ansible_sg_tags
}

#mysql is allowing connections from backend
resource "aws_security_group_rule" "mysql_backend" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  source_security_group_id = module.backend_sg.id
  security_group_id = module.mysql_sg.id
}

resource "aws_security_group_rule" "backend_frontend" {
  type              = "ingress"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  source_security_group_id = module.frontend_sg.id
  security_group_id = module.backend_sg.id
}

resource "aws_security_group_rule" "frontend_public" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  # source_security_group_id = module.frontend_sg.id
  security_group_id = module.frontend_sg.id
}

resource "aws_security_group_rule" "mysql_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion_sg.id
  security_group_id = module.mysql_sg.id
}

resource "aws_security_group_rule" "backend_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion_sg.id
  security_group_id = module.backend_sg.id
}

resource "aws_security_group_rule" "frontend_bastion" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.bastion_sg.id
  security_group_id = module.frontend_sg.id
}

resource "aws_security_group_rule" "bastion_public" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  # source_security_group_id = module.frontend_sg.id
  security_group_id = module.bastion_sg.id
}

resource "aws_security_group_rule" "mysql_ansible" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.ansible_sg.id
  security_group_id = module.mysql_sg.id
}

resource "aws_security_group_rule" "backend_ansible" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.ansible_sg.id
  security_group_id = module.backend_sg.id
}

resource "aws_security_group_rule" "frontend_ansible" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  source_security_group_id = module.ansible_sg.id
  security_group_id = module.frontend_sg.id
}

resource "aws_security_group_rule" "ansible_public" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  # source_security_group_id = module.ansible_sg.id
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.ansible_sg.id
}