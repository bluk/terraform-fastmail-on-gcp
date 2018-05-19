variable "domain_name" {
  description = "The domain name to setup DNS records for like `example.com`"
}

variable "managed_zone_name" {
  description = "The name of the managed zone resource to create DNS records in. Should be value of aws_route53_zone.<resource name>.zone_id."
}

variable "create_root_domain_txt" {
  description = "Determines if the root domain should have a TXT record. true/false"
  default     = true
}
