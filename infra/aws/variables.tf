variable "region" {
  description = "aws region"
  default     = "us-east-1"
}

variable "account_id" {
  default = 809571664566
}

variable "environment" {
  default = "dev"
}

variable "prefix" {
  description = "objects prefix"
  default     = "k8s-pa"
}

locals {
  prefix = var.prefix
  common_tags = {
    Environment = "dev"
    Project     = "igti-edc-pa"
  }
}

variable "bucket_names" {
  type        = list(string)
  default = [
    "landing-zone",
    "processing-zone",
    "delivery-zone"
  ]
}

variable "database_names" {
  type        = list(string)
  default = [
    "dl_landing_zone",
    "dl_processing_zone",
    "dl_delivery_zone"
  ]
}

variable "spot_instance_types"{
    default = ["t3.small","t2.small"]
    description = "List of instance types for SPOT instance selection"
}

variable "ondemand_instance_type"{
    default = "t3.medium"
    description = "On Demand instance type"
}

variable "spot_max_size"{
    default = 2
    description = "How many SPOT instance can be created max"
}

variable "spot_desired_size"{
    default = 2
    description = "How many SPOT instance should be running at all times"
}

variable "ondemand_desired_size"{
    default = 2
    description = "How many OnDemand instances should be running at all times"
}