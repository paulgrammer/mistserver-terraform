
# MistServer-Terraform

Terraform configurations for deploying MistServer, a media streaming server, in a cloud environment. Terraform is an Infrastructure as Code (IaC) tool that enables you to define and provision your infrastructure using code.

## Prerequisites

Before you begin, ensure you have the following installed and configured:

1.  **Terraform**: Install Terraform from the [official website](https://www.terraform.io/downloads.html).
2.  **Cloud Provider CLI**: Install and configure the CLI for the cloud provider you’re using (e.g., AWS CLI, Azure CLI, or Google Cloud SDK).
3.  **Access Credentials**: Ensure you have the necessary credentials (e.g., access keys or service account) to deploy resources in your cloud environment.
4.  **MistServer Configuration**: Have the necessary configuration details for MistServer, such as streaming settings and network requirements.

## Repository Structure

```
.
├── main.tf       # Main Terraform configuration file
├── variables.tf  # Input variables
├── outputs.tf    # Output values

```

## Getting Started

Follow these steps to deploy MistServer using Terraform:

### 1. Clone the Repository

```bash
git clone https://github.com/paulgrammer/mistserver-terraform.git
cd mistserver-terraform

```

### 2. Initialize Terraform

Terraform initialization prepares your working directory by downloading the required provider plugins and modules. Run the following command:

```bash
terraform init

```

### 3. Review and Customize Variables
Create a `terraform.tfvars` file to define your variables.
Example `terraform.tfvars`:

```hcl
domain        = "mistserver.example.com"       # Replace with your domain name
ssh_host      = "78.47.240.13"             # Replace with your VPS IP address or hostname
ssh_user      = "root"                     # SSH username (could be different depending on your VPS)
ssh_password  = ""                          # SSH password
ssh_private_key   = "~/.ssh/id_rsa"            # Path to your SSH private key

```

### 4. Preview Changes

To preview the resources that Terraform will create, run:

```bash
terraform plan

```

This command provides a detailed summary of the actions Terraform will take.

### 5. Apply the Configuration

Run the following command to create the resources defined in the configuration files:

```bash
terraform apply

```

You will be prompted to confirm. Type `yes` to proceed.

### 6. Access MistServer

Once the deployment is complete, Terraform will output important information such as the public IP address of your MistServer instance. Use this information to access the server.

Example output:

```
Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

Outputs:

mistserver_ip = "123.45.67.89"

```

You can access MistServer by navigating to `https://mistserver.example.com` in your browser.

## Additional Information

-   **State Management**: Terraform maintains the state of your infrastructure in a `terraform.tfstate` file. Keep this file secure and consider using remote backends (e.g., S3, Azure Blob Storage) for collaboration and versioning.
-   **MistServer Documentation**: Refer to the official [MistServer documentation](https://docs.mistserver.org/) for detailed information about configuring and managing MistServer.
-   **Provider Configuration**: Ensure the `provider.tf` file is properly set up for your cloud provider.

## Support

If you encounter issues or have questions, feel free to open an issue in this repository or contact the maintainers.

----------

Happy streaming with MistServer and Terraform!
