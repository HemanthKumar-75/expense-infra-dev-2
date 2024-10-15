resource "aws_ssm_parameter" "mysql_sg_id" {
  name = "/${var.project}/${var.envinronment}/mysql_sg_id"
  type = "String"
  value = module.mysql_sg.id
}

resource "aws_ssm_parameter" "backend_sg_id" {
  name = "/${var.project}/${var.envinronment}/backend_sg_id"
  type = "String"
  value = module.backend_sg.id
}

resource "aws_ssm_parameter" "frontend_sg_id" {
  name = "/${var.project}/${var.envinronment}/frontend_sg_id"
  type = "String"
  value = module.frontend_sg.id
}

resource "aws_ssm_parameter" "bastion_sg_id" {
  name = "/${var.project}/${var.envinronment}/bastion_sg_id"
  type = "String"
  value = module.bastion_sg.id
}

resource "aws_ssm_parameter" "ansible_sg_id" {
  name = "/${var.project}/${var.envinronment}/ansible_sg_id"
  type = "String"
  value = module.ansible_sg.id
}

resource "aws_ssm_parameter" "app_alb_sg_id" {
  name = "/${var.project}/${var.envinronment}/app_alb_sg_id"
  type = "String"
  value = module.app_alb_sg.id
}

resource "aws_ssm_parameter" "vpn_sg_id" {
  name = "/${var.project}/${var.envinronment}/vpn_sg_id"
  type = "String"
  value = module.vpn_sg.id
}

resource "aws_ssm_parameter" "web_alb_sg_id" {
  name = "/${var.project}/${var.envinronment}/web_alb_sg_id"
  type = "String"
  value = module.web_alb_sg.id
}