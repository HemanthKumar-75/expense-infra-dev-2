data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.envinronment}/vpc_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project}/${var.envinronment}/public_subnet_ids"
}

data "aws_ssm_parameter" "web_alb_sg_id" {
  name = "/${var.project}/${var.envinronment}/web_alb_sg_id"
}

data "aws_ssm_parameter" "https_certificate_arn" {
  name = "/${var.project}/${var.envinronment}/https_certificate_arn"
}