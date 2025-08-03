resource "aws_instance" "frontend" {
  ami = local.ami_id
  instance_type = var.instance_type
#   key_name = var.key_name
  subnet_id = local.public_subnet_id
  vpc_security_group_ids = [module.frontend_sg.id]
  
  tags = {
    Name = "${var.project}-${var.environment}-frontend"
  } 
}

resource "null_resource" "frontend" {
  triggers = {
    instance_id = aws_instance.frontend.id
  }
  provisioner "local-exec" {
    command = "echo ${aws_instance.frontend.public_ip} > frontend_ip.txt"
  }
}