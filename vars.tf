variable "default_tags" {
  type = map(string)
  default = {
    "env" = "jenk-ex"
  }
  description = "describing my variable"
}

variable "public_subnet_count" {
  type        = number
  description = "(optional) describing my variable"
  default     = 2
}

variable "private_subnet_count" {
  type        = number
  description = "(optional) describing my variable"
  default     = 2
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Main VPC CIDR block"
}

variable "security_group_name" {
  type    = string
  default = "instance-security-group"
}
