variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "object_name_prefix" {
  description = "Prefix to be added to all infrastructure objects"
  default     = "rbro-pge-web-scrapper"
}