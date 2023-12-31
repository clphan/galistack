variable "environment" {
  description = "Environment"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "vpc_cidr_block" {
  type        = string
  description = "VPC's CIDR block"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of CIDR ranges for public subnets"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of CIDR ranges for private subnets"
}

variable "eks_nodegroup_subnets" {
  type        = list(string)
  description = "List of CIDR ranges for private subnets dedicated for EKS nodegroups"
  default     = []
}

variable "protected_subnets" {
  type        = list(string)
  description = "List of CIDR ranges for protected subnets"
}

variable "eks_cluster_name" {
  type    = string
  default = "app"
}

variable "node_groups" {
  type = any
  default = {
    system = {
      disk_size         = 20
      instance_types    = ["t3.medium", "t3a.medium"]
      capacity_type     = "SPOT"
      desired_capacity  = 1
      max_size          = 1
      min_size          = 0
      kubernetes_taints = []
    }
  }
}

variable "stage" {
  type    = string
  default = "galistack"
}

variable "public_domain" {
  type    = string
  default = "galistack.com"
}

variable "use_custom_launch_template" {
  description = "Determines whether to create a launch template or not. If set to `false`, EKS will use its own default launch template"
  type        = bool
  default     = false
}

variable "metadata_options" {
  description = "Customize the metadata options for the instance"
  type        = map(any)
  default     = {}
}
