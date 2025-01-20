variable "domain" {
  description = "The fully qualified domain name (FQDN) of the server, e.g., 'example.com'."
  type        = string
}

variable "ssh_host" {
  description = "The IP address or hostname of the server you want to connect to via SSH."
  type        = string
}

variable "ssh_user" {
  description = "The username used for SSH authentication on the target server."
  type        = string
}

variable "ssh_password" {
  description = "The password used for SSH authentication. **Note:** Storing passwords directly in Terraform code is generally discouraged due to security risks. Consider using alternative methods like environment variables or a secrets management solution (e.g., HashiCorp Vault)."
  type        = string
  sensitive = true
}

variable "ssh_private_key" {
  description = "The path to the private key file used for SSH authentication. If this variable is empty or not provided, password-based authentication will be used."
  type        = string
}
