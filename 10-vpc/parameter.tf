resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.envinronment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project}/${var.envinronment}/public_subnet_ids"
  type  = "StringList"
  value = join(",",module.vpc.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project}/${var.envinronment}/private_subnet_ids"
  type  = "StringList"
  value = join(",",module.vpc.private_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_ids" {
  name  = "/${var.project}/${var.envinronment}/database_subnet_ids"
  type  = "StringList"
  value = join(",",module.vpc.database_subnet_ids)
}

resource "aws_ssm_parameter" "database_subnet_group_name" {
  name  = "/${var.project}/${var.envinronment}/database_subnet_group_name"
  type  = "String"
  value = module.vpc.database_subnet_group
}