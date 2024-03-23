<p align="center">
  <a href="" rel="noopener">
 <img width=200px height=200px src="https://i.imgur.com/6wj0hh6.jpg" alt="Project logo"></a>
</p>

<h3 align="center">TF Monitoring</h3>

<div align="center">

[![Status](https://img.shields.io/badge/status-active-success.svg)]()

</div>

---

<p align="center"> A simple Terraform Monitoring template.
    <br> 
</p>

## 📝 Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Installation](#install)
- [How to Test](#test)
- [Warning](#warning)



## 🧐 About <a name = "about"></a>

The prompt(s) that started this project were the following: 

```
1. How would you structure your Terraform project if you have multiple environments
and use different cloud providers?
2. Write a Terraform script with the below requirements:
    ● Creates a ubuntu aws ec2-instance
    ● Install ansible
    ● Execute an ansible playbook
3. If you have multiple Ubuntu prod instances, How would you monitor them? What would be your monitoring strategy?

```

Therefore, this repository contains Terraform configurations to deploy a monitoring infrastructure using Prometheus and Grafana on cloud providers such as AWS and GCP.

# 🏁 Getting Started <a name = "getting_started"></a>

An overview of the project could be the following:

## Organization

The project is organized as follows:

- **environments**: Contains environment-specific Terraform configurations.
  - **dev**: Configuration for the development environment.
  - **prod**: Configuration for the production environment.
- **modules**: Contains reusable Terraform modules.
  - **aws**: Module for provisioning resources on AWS.
  - **gcp**: Module for provisioning resources on GCP.
  - **monitoring**: Module for deploying the monitoring infrastructure.
  - **ansible**: Contains Ansible playbooks and configurations for setting up Prometheus and Grafana.

### A Simple Diagram:

![Architecture Diagram](./screenshot-prometheus.png
 "A Simple Diagram")



# 🔧 Instalation <a name = "install"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

1. **Clone the Repository**: Clone this repository to your local machine.
   
   - Open a terminal window.
   - Run the following command to clone the repository:
   
     ```
     git clone https://github.com/your-username/terraform-monitoring.git
     ```

2. **Install Terraform**: If you haven't already, install Terraform on your local machine. You can download Terraform from the [official website](https://www.terraform.io/downloads.html) or use a package manager.

3. **Install Ansible**: If you haven't already, install Ansible on your local machine. You can install Ansible using a package manager or by following the instructions on the [official website](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).


# 🚀 How to Test (AWS) <a name = "test"></a>

1. **Set up your AWS credentials**: Set up your AWS Access Key and Secret Key using the following command:
    ```
    aws --configure
    ```

4. **Initialize Terraform**: Navigate to the `environments` directory corresponding to the environment you want to deploy (e.g., `environments/dev` or `environments/prod`) and run the following command to initialize Terraform:
    ```
    terraform init
    ```

4. **Review Configuration**: Review the Terraform configuration files (`main.tf`, `variables.tf`, etc.) in the chosen environment directory to ensure they match your requirements.

5. **Run Terraform Plan**: Run the following command to preview the changes Terraform will make to your infrastructure:
    ```
    terraform plan
    ```

6. **Apply Changes**: If the plan looks good, run the following command to apply the changes and deploy the monitoring infrastructure:
    ```
    terraform apply
    ```

7. **Verify Deployment**: Once the deployment is complete, verify that Prometheus and Grafana are accessible using the provided URLs.


# ⚠️ Warning

The deployment on GCP has not been tested thoroughly and may not work as expected. Use it at your own risk. This project has only been tested on AWS.