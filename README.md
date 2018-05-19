# terraform-google-fastmail-dns

This is an unofficial [Terraform](https://www.terraform.io) module which creates
[Google Cloud DNS](https://cloud.google.com/dns/) records to setup a domain with
[FastMail](https://www.fastmail.com).

## Example Usage

In your Terraform file:

```
resource "google_dns_managed_zone" "example" {
  name        = "example"
  dns_name    = "example.com."
  description = "Example domain"
}

module "example_fastmail" {
  source = "github.com/bluk/terraform-google-fastmail-dns"
  domain_name = "example.com"
  managed_zone_name = "${google_dns_managed_zone.example.name}"
}
```
