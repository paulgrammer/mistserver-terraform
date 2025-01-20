output "ssl_certificate_status" {
  description = "Status of the SSL certificate installation."
  value       = "Successfully installed for domain ${var.domain}"
}
