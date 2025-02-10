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

variable "zone_id" {
  default = "Z05267743DLV8AUL24HBJ"
}