variable "cluster_name_prefix" {
  description = "Your name of the cluster (without domain which is k8s.local by default)"
  default     = "kopscluster"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "ID of VPC where cluster will be deployed"
  default     = "vpc-5072ff2d"
}

variable "azs" {
  description = "Availability Zones for the cluster (1 master per AZ will be deployed, only odd numbers are supported)"
  default     = "us-east-1b"
}

variable "subnets" {
  description = "List of private subnets (matching AZs) where to deploy the cluster)"
  default     = "subnet-003c1b2c5f2bf3d1e"
}

variable "node_count" {
  description = "Number of worker nodes"
  default     = "1"
}

variable "http_proxy" {
  description = "IP[:PORT] - address and optional port of HTTP proxy to be used to download packages"
  default     = ""
}

variable "disable_natgw" {
  description = "Don't use NAT Gateway for egress traffic (may be needed on some accounts)"
  default     = "false"
}

variable "master_instance_type" {
  description = "Instance type (size) for master nodes"
  default     = "t2.micro"
}

variable "node_instance_type" {
  description = "Instance type (size) for worker nodes"
  default     = "t2.micro"
}

variable "masters_iam_policies_arns" {
  description = "List of existing IAM policies that will be attached to instance profile for master nodes (EC2 instances)"
  type        = "list"
  default     = ["arn:aws:iam::672058243948:policy/sample-master"]
}

variable "nodes_iam_policies_arns" {
  description = "List of existing IAM policies that will be attached to instance profile for worker nodes (EC2 instances)"
  type        = "list"
  default     = ["arn:aws:iam::672058243948:policy/sample-node"]
}

variable "iam_cross_account_role_arn" {
  description = "Cross-account role to assume when deploying the cluster (on another account)"
  default     = ""
}

variable "aws_ssh_keypair_name" {
  description = "Optional name of existing SSH keypair on AWS account, to be used for cluster instances (will be generated if not specified)"
  default     = ""
}

variable "linux_distro" {
  description = "Linux distribution for K8s cluster instances (supported values: debian, amzn2)"
  default     = "amzn2"
}
