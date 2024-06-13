3-Tier Environment Setup on AWS
This repository contains the Terraform code to create a 3-tier architecture on AWS. A 3-tier architecture is a common setup for web applications and consists of the following layers:

Presentation Layer: Handles the user interface, usually consists of web servers.
Application Layer: Contains the business logic, usually consists of application servers.
Data Layer: Stores the application's data, usually consists of database servers.

Architecture Overview
The 3-tier architecture implemented in this setup includes:

VPC: A Virtual Private Cloud to contain all the resources.
Subnets: Public and private subnets for different layers.
Internet Gateway: To allow internet access to resources in public subnets.
NAT Gateway: To allow instances in private subnets to access the internet.
Security Groups: To control inbound and outbound traffic to the instances.
EC2 Instances: For the web and application servers.
RDS Instance: For the database server.

Directory Structure
terraform/: Contains the Terraform scripts for the infrastructure setup.
main.tf: Main Terraform configuration file.
variables.tf: Variables used in the Terraform configuration.
provider.tf: Provider configuration
