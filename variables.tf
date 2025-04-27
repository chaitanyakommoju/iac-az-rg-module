variable "resource_group_name" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resource group will be created"
  type        = string
}

variable "orgname" {
  description = "The organization name"
  type        = string
}

variable "environment" {
  description = "The environment"
  type        = string
}

variable "costcenter" {
  description = "The cost center for the resources"
  type        = string
}

variable "default_tags" {
  description = "Default tags applied to all resources"
  type        = map(string)
  default     = {}
}
