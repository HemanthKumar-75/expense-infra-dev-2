locals {
    resource_name = "${var.project}-${var.environment}-frontend"
    frontend_sg_id = data.aws_ssm_parameter.frontend_sg_id.value
    public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
    ami_id = data.aws_ssm_parameter.ami.value
}