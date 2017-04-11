# Provider
variable "region" {
  type = "string"
  description = "Region to deploy infrastructure."
}

# Credentials
variable "access_key" {
  # will be prompt.
  description = "Access Key to the infrastructure."
}

variable "secret_key" {
  # will be prompt.
  description = "Secret Key to the infrastructure."
}

