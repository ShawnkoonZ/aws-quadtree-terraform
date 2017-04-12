# Provider
variable "region" {
  type = "string"
  description = "Region to deploy infrastructure."
}

# Keys
variable "key_name" {
  type = "string"
  description = "Type name of key pair to apply"
}