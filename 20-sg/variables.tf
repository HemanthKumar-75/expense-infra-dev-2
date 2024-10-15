variable "project" {
  default = "expense"
}

variable "envinronment" {
  default = "dev"
}

variable "common_tags" {
  default = {
    project = "Expense"
    envinronment = "dev"
    Terraform = true
    created-by = "HemanthKumar"
  }
}

variable "sg_tags" {
  default = {
    component = "Mysql"
  }
}

variable "vpc_tags" {
  default = {
    number-of-subnets = 2
  }
}

variable "public_subnet_cidrblocks" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrblocks" {
  default = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "database_subnet_cidrblocks" {
  default = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "is_peering_required" {
  default = true
}

variable "backend_sg_tags" {
  default = {
    component = "Backend"
  }
}

variable "frontend_sg_tags" {
  default = {
    component = "Frontend"
  }
}

variable "bastion_sg_tags" {
  default = {
    component = "bastion"
  }
}

variable "ansible_sg_tags" {
  default = {
    component = "ansible"
    description = "for connection to other servers"
  }
}

variable "app_alb_sg_tags" {
  default = {
    component = "app ALB"
    description = "for connection to other servers"
  }
}

variable "web_alb_sg_tags" {
  default = {
    component = "WEB ALB"
    description = "for connection to others"
  }
}