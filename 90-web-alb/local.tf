locals {
  resource_name = "${var.project}-${var.envinronment}"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  # database_subnet_group_name = data.aws_ssm_parameter.database_subnet_group_name.value
  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)
  web_alb_sg_id = data.aws_ssm_parameter.web_alb_sg_id.value
  https_certificate_arn = data.aws_ssm_parameter.https_certificate_arn.value
}