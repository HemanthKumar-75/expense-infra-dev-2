variable "project" {
  default = "expense"
}

variable "environment" {
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

variable "zone_name" {
  default = "hemanthkumar.online"
}

variable "frontend_tags" {
  default = {
    component = "frontend"
  }
}

variable "instance_type" {
  default = "t3.micro"
  
}