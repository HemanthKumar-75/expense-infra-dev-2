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

variable "zone_name" {
  default = "hemanthkumar.online"
}

variable "web_alb_tags" {
  default = {
    component = "web-alb"
  }
}