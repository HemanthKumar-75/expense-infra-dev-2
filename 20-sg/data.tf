data "aws_ssm_parameter" "vpc_id" {
  name = "/${var.project}/${var.envinronment}/vpc_id"
}