variable "instances" {
  description = "Map of instances to create"
  type = map(object({
    ami            = string
    instance_type  = string
    subnet_id      = string
    security_groups = list(string)
  }))
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}
