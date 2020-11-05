variable "helm_release_name" {
  default = "appidentityandaccessadapter"
}

variable "helm_chart" {
  default = "appidentityandaccessadapter"
}

variable "helm_repository" {
  default = "appidentityandaccessadapter"
}

variable "helm_repository_username" {
  default = ""
}

variable "helm_repository_password" {
  default = ""
}

variable "chart_version" {}

variable "dependencies" {
  type = "list"
}

variable "values" {
  default = ""
  type    = "string"
}
