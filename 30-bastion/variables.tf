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

variable "bastion_tags" {
  default = {}
}