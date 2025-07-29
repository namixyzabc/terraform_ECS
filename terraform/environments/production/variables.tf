
variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "ecs-app"
}

variable "environment" {
  description = "The environment name"
  type        = string
  default     = "production"
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default = {
    Project     = "ecs-app"
    Environment = "production"
    ManagedBy   = "Terraform"
  }
}
