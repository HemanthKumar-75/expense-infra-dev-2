locals {
  resource_name = "${var.project}-${var.envinronment}"
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  # database_subnet_group_name = data.aws_ssm_parameter.database_subnet_group_name.value
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value)
  app_alb_sg_id = data.aws_ssm_parameter.app_alb_sg_id.value
}