# resource "null_resource" "mist_server" {
#   provisioner "local-exec" {
#     command = "echo '[DEBUG] Attempting MistServer installation on ${var.ssh_host}' >> terraform-debug.log"
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "apt update -y",
#       "apt install -y curl",
#       # Install MistServer using the curl method
#       "curl -o - https://releases.mistserver.org/is/mistserver_64Vlatest.tar.gz 2>/dev/null | sh",
#       # Start and enable MistServer
#       "systemctl start mistserver",
#       "systemctl enable mistserver",
#     ]

#     connection {
#       type     = "ssh"
#       user     = var.ssh_user
#       password = var.ssh_password
#       host     = var.ssh_host
#       # Read file if path contains "/", otherwise use directly
#       private_key = can(regex("/", var.ssh_private_key)) ? file(var.ssh_private_key) : var.ssh_private_key
#     }
#   }

#   provisioner "local-exec" {
#     command = "echo '[DEBUG] MistServer installation completed on ${var.ssh_host}' >> terraform-debug.log"
#   }
# }

# resource "null_resource" "enable_https" {
#   depends_on = [null_resource.mist_server]

#   provisioner "local-exec" {
#     command = "echo '[DEBUG] Starting HTTPS configuration on ${var.ssh_host}' >> terraform-debug.log"
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "apt install -y certbot",
#       "certbot certonly --non-interactive --agree-tos --manual --preferred-challenges=http --manual-auth-hook MistUtilCertbot --deploy-hook MistUtilCertbot -d ${var.domain} -m admin@${var.domain}"
#     ]

#     connection {
#       type     = "ssh"
#       user     = var.ssh_user
#       password = var.ssh_password
#       host     = var.ssh_host
#       # Read file if path contains "/", otherwise use directly
#       private_key = can(regex("/", var.ssh_private_key)) ? file(var.ssh_private_key) : var.ssh_private_key
#     }
#   }

#   provisioner "local-exec" {
#     command = "echo '[DEBUG] HTTPS configuration completed on ${var.ssh_host}' >> terraform-debug.log"
#   }
# }
