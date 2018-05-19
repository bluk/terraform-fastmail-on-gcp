resource "google_dns_record_set" "mx" {
  managed_zone = "${var.managed_zone_name}"

  name = "${var.domain_name}."
  type = "MX"
  ttl  = 3600

  rrdatas = [
    "20 in2-smtp.messagingengine.com.",
    "10 in1-smtp.messagingengine.com.",
  ]
}

resource "google_dns_record_set" "root_domain_txt" {
  count        = "${var.create_root_domain_txt ? 1 : 0}"
  managed_zone = "${var.managed_zone_name}"

  name = "${var.domain_name}."
  type = "TXT"
  ttl  = 3600

  rrdatas = [
    "v=spf1 include:spf.messagingengine.com ?all",
  ]
}

resource "google_dns_record_set" "adsp_domainkey_txt" {
  managed_zone = "${var.managed_zone_name}"

  name = "_adsp._domainkey.${var.domain_name}."
  type = "TXT"
  ttl  = 3600

  rrdatas = [
    "dkim=unknown",
  ]
}

resource "google_dns_record_set" "wildcard_mx_txt" {
  managed_zone = "${var.managed_zone_name}"

  name = "*.${var.domain_name}."
  type = "MX"
  ttl  = 3600

  rrdatas = [
    "20 in2-smtp.messagingengine.com.",
    "10 in1-smtp.messagingengine.com.",
  ]
}

resource "google_dns_record_set" "client_smtp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_client._smtp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "1 1 1 fastmail.com.",
  ]
}

resource "google_dns_record_set" "caldav_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_caldav._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "0 0 0 .",
  ]
}

resource "google_dns_record_set" "caldavs_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_caldavs._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "0 1 443 caldav.fastmail.com.",
  ]
}

resource "google_dns_record_set" "carddav_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_carddav._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "0 0 0 .",
  ]
}

resource "google_dns_record_set" "carddavs_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_carddavs._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "0 1 443 carddav.fastmail.com.",
  ]
}

resource "google_dns_record_set" "imap_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_imap._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "0 0 0 .",
  ]
}

resource "google_dns_record_set" "imaps_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_imaps._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "0 1 993 imap.fastmail.com.",
  ]
}

resource "google_dns_record_set" "pop3_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_pop3._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "0 0 0 .",
  ]
}

resource "google_dns_record_set" "pop3s_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_pop3s._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "10 1 995 pop.fastmail.com.",
  ]
}

resource "google_dns_record_set" "submission_tcp_srv" {
  managed_zone = "${var.managed_zone_name}"

  name = "_submission._tcp.${var.domain_name}."
  type = "SRV"
  ttl  = 3600

  rrdatas = [
    "0 1 587 smtp.fastmail.com.",
  ]
}

resource "google_dns_record_set" "mail_a" {
  managed_zone = "${var.managed_zone_name}"

  name = "mail.${var.domain_name}."
  type = "A"
  ttl  = 3600

  rrdatas = [
    "66.111.4.147",
    "66.111.4.148",
  ]
}

resource "google_dns_record_set" "mail_mx" {
  managed_zone = "${var.managed_zone_name}"

  name = "mail.${var.domain_name}."
  type = "MX"
  ttl  = 3600

  rrdatas = [
    "20 in2-smtp.messagingengine.com.",
    "10 in1-smtp.messagingengine.com.",
  ]
}

resource "google_dns_record_set" "fm1_domainkey_cname" {
  managed_zone = "${var.managed_zone_name}"

  name = "fm1._domainkey.${var.domain_name}."
  type = "CNAME"
  ttl  = 3600

  rrdatas = [
    "fm1.${var.domain_name}.dkim.fmhosted.com.",
  ]
}

resource "google_dns_record_set" "fm2_domainkey_cname" {
  managed_zone = "${var.managed_zone_name}"

  name = "fm2._domainkey.${var.domain_name}."
  type = "CNAME"
  ttl  = 3600

  rrdatas = [
    "fm2.${var.domain_name}.dkim.fmhosted.com.",
  ]
}

resource "google_dns_record_set" "fm3_domainkey_cname" {
  managed_zone = "${var.managed_zone_name}"

  name = "fm3._domainkey.${var.domain_name}."
  type = "CNAME"
  ttl  = 3600

  rrdatas = [
    "fm3.${var.domain_name}.dkim.fmhosted.com.",
  ]
}
