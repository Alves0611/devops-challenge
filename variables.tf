variable "aws_region" {
  type        = string
  description = "The region to deploy to"
  default     = "us-east-1"
}

variable "service_name" {
  type        = string
  description = "The service name identifier"
  default     = "devops-challenge"
}