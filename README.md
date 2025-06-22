# ☸️ Kubernetes Cluster on AWS using RHEL 9 EC2 + Terraform + Datadog

## 🔥 Project Objective
Provision a lightweight Kubernetes cluster on AWS using Terraform with RHEL 9 EC2 instances, and enable real-time monitoring using Datadog.

## 🧰 Tools & Technologies
- **Terraform** (Infrastructure as Code)
- **AWS EC2**, VPC, Security Groups
- **RHEL 9** (for Kubernetes nodes)
- **Kubeadm** (K8s bootstrapping)
- **Datadog** (Monitoring agent on nodes)

---

## 📁 Folder Structure

| Folder | Description |
|--------|-------------|
| `terraform/` | All Terraform configs to launch EC2, VPC, SGs |
| `k8s-setup/` | Scripts to bootstrap Kubernetes master and workers |
| `monitoring/` | Datadog agent installation script |

---

## 🪜 Setup Steps

### 1. Provision AWS Infra using Terraform
```bash
cd terraform/
terraform init
terraform apply -var="ami_id=<your-rhel-9-ami-id>" -auto-approve
