# Capacity
variable "read_capacity" {
  type        = "string"
  default     = "10"
  description = "Read capacity unit."
}

variable "write_capacity" {
  type        = "string"
  default     = "20"
  description = "Write capacity unit."
}
