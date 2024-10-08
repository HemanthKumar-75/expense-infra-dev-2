data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.envinronment}/vpc_id"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/${var.project}/${var.envinronment}/private_subnet_ids"
}

data "aws_ssm_parameter" "app_alb_sg_id" {
  name = "/${var.project}/${var.envinronment}/app_alb_sg_id"
}