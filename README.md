# terraform-import

Terraform import is a command that allows you to bring existing infrastructure resources under Terraform's management. It updates Terraform's state file to include resources that were created outside of Terraform, enabling you to manage them as Infrastructure as Code (IaC).

## How It Works:
- State Update: The command adds the resource to Terraform's state but does not generate configuration automatically.
- Manual Configuration: After importing, you need to manually define the resource in your Terraform configuration file.
- Syntax:
terraform import <resource_address> <resource_id>

![import-architecture](https://github.com/user-attachments/assets/a6df3ddb-4df2-4b74-a985-1a219514e295)

## Terraform Components

![image](https://github.com/user-attachments/assets/bd92f38c-272d-42ea-b55e-c6bb9e60c5bd)

## Terraform has four main components, as shown in the above image.

Terraform CLI – An executable that contains commands for managing resources.
Configuration File – This is where you define resources using the HCL or JSON language.
Provider Plugins – These plugins connect to resource providers such as AWS, Azure, GCP, etc.
State Data – After updating the resources, Terraform updates the state of the resources in the terraform.tfstate file. During the next update, Terraform compares the current state of the resources and the last updated state in the state file to identify the difference. Then, Terraform updates only the difference.


## Terraform’s typical workflow
How do the above four components connect in Terraform?

![image](https://github.com/user-attachments/assets/49605597-8133-4ff7-acdd-c33f5edff4e0)

## Steps Involved in this:-

1. Goto AWS Console > Manually create EC2 instance

![ec2](https://github.com/user-attachments/assets/fded16f7-355f-4edc-93a8-afb0c2b4e21f)

2. Clone the created repo > create versions and main.tf file with below details

![tf-imp1](https://github.com/user-attachments/assets/02fb8709-d58c-4be9-96c5-e8d3249bac66)

3. Initialize using terraform init 

![tf-imp2](https://github.com/user-attachments/assets/fa73efc0-6365-4e26-8109-f11b796470ff)

4. Use terraform import cmd and to check use terraform state list

![tf-imp3](https://github.com/user-attachments/assets/362aa5f2-9a89-4744-a006-06ff287c9fce)

5. Inspecting Terraform State for the imported EC2 resource

 ![tfstate-cmd](https://github.com/user-attachments/assets/7e9340c2-0854-4e17-9e03-b1d355879523)

![tf-state](https://github.com/user-attachments/assets/5535993e-c7e6-44e2-bb74-95e885e540db)

6. Use terraform plan and update configuration (main.tf) file manually using the plan

![config](https://github.com/user-attachments/assets/bedd211b-da4b-417b-9c95-47ba52b76bd5)

7. Now use terraform apply to apply the resouce configuration (There will be no changes if it matches the current with desired infrastructure.

![tf-apply](https://github.com/user-attachments/assets/61169e77-d654-4fc6-9ce9-27b221b87c1c)

8. If done with the work, we can destroy the resource now using tf

![tf-destroy1](https://github.com/user-attachments/assets/a9106be6-2b24-4252-96d4-d1e95dc5c055)

![tf-destroy2](https://github.com/user-attachments/assets/1388a6a8-e738-4629-af3b-b4ba7eff7326)
