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