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

variable "backend_tags" {
  default = {
    component = "backend"
  }
}

variable "zone_name" {
  default = "hemanthkumar.online"
}