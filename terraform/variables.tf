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

variable "cluster_version" {
  type        = number
  description = "eks cluster version"
  default     = "1.29"
}

variable "node_groups" {
  description = "node group settings"
  type = object({
    min_size     = number
    max_size     = number
    desired_size = number
    instace_type = string
  })
  default = {
    min_size     = 2
    max_size     = 2
    desired_size = 2
    instace_type = "t2.micro"
  }
}
