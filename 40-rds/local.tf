locals {
  resource_name = "${var.project}-${var.envinronment}"
  mysql_sg_id = data.aws_ssm_parameter.mysql_sg_id.value
  database_subnet_group_name = data.aws_ssm_parameter.database_subnet_group_name
  # public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
}