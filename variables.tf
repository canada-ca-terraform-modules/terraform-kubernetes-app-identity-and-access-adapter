variable "helm_release_name" {
  default = "appidentityandaccessadapter"
}

variable "helm_chart" {
  default = "appidentityandaccessadapter"
}

variable "helm_repository" {
  default     = "appidentityandaccessadapter"
  description = "The repository where the Helm chart is stored"
}

variable "helm_repository_username" {
  type        = string
  nullable    = false
  default     = ""
  description = "The username of the repository where the Helm chart is stored"
  sensitive   = true
}

variable "helm_repository_password" {
  type        = string
  nullable    = false
  default     = ""
  description = "The password of the repository where the Helm chart is stored"
  sensitive   = true
}

variable "chart_version" {}

variable "dependencies" {
  type = "list"
}

variable "values" {
  default = ""
  type    = "string"
}
