#!/bin/bash
set -e

sudo dnf update -y
sudo dnf install -y kubeadm kubelet docker
sudo systemctl enable --now docker kubelet

# Paste the join command you get from master node here on this node:




# Example:
# sudo kubeadm join <MASTER_IP>:6443 --token <TOKEN> --discovery-token-ca-cert-hash sha256:<HASH>

