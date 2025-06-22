# ☸️ Kubernetes Cluster on AWS using RHEL 9 EC2 + Terraform + Datadog

## 🔥 Project Objective
Provision a Kubernetes cluster on AWS with RHEL 9 using Terraform. Monitoring is enabled via Datadog agent on all nodes.

## 🧰 Tech Stack
- Terraform (IaC)
- AWS EC2, VPC, SG
- RHEL 9, kubeadm
- Datadog (Monitoring)

## 📁 Folder Structure

| Folder | Description |
|--------|-------------|
| `terraform/` | All Terraform configs to launch EC2, VPC, SGs |
| `k8s-setup/` | Scripts to bootstrap Kubernetes master and workers |
| `monitoring/` | Datadog agent installation script |

## 🛠️ Setup Guide
1. Clone the repo
2. Edit `terraform/variables.tf` and add your RHEL 9 AMI ID
3. Run Terraform:
```bash
cd terraform
terraform init
terraform apply -var="ami_id=ami-xxxxxxxx" -auto-approve
```
4. SSH into EC2s and run setup scripts
5. Copy join command from master to worker script
6. Verify with `kubectl get nodes`

## 📊 Monitoring with Datadog
Install agent on both nodes with your Datadog API key. Dashboards will auto-populate.

## 🔐 Security
- SSH via key pair
- Limited security group ports

## 👨‍💻 Author
Saahil Tanwar
