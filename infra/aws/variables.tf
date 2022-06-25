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
  default     = "igti-edc-pa"
}

locals {
  prefix = var.prefix
  common_tags = {
    Environment = "dev"
    Project     = "igti-edc-mod2"
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