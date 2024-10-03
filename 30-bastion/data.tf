data "aws_ssm_parameter" "bastion_sg_id" {
  name = "/${var.project}/${var.envinronment}/bastion_sg_id"
}

data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/${var.project}/${var.envinronment}/public_subnet_ids"
}

data "aws_ami" "ec2_id" {

    most_recent = true
    owners = ["973714476881"]

    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
    }

    filter {
        name = "root-device-type"
        values = ["ebs"]
    }

    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
}