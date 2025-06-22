#!/bin/bash
set -e

sudo dnf update -y
sudo dnf install -y kubeadm kubelet kubectl docker
sudo systemctl enable --now docker kubelet

sudo kubeadm init --pod-network-cidr=192.168.0.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# Save join command
kubeadm token create --print-join-command > /tmp/join-command.sh
chmod +x /tmp/join-command.sh

---
