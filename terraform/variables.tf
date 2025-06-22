variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t3.small"
}

variable "key_name" {
  default = "k8s-key"
}

variable "ami_id" {
  description = "AMI ID for RHEL 9"
  type        = string
}
