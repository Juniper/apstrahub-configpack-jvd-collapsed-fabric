resource "apstra_asn_pool" "DC-CF-ASNs" {
  name = "DC-CF-ASNs"
  ranges = [
    {
      first = split("-", var.fabric_asn_range)[0]
      last  = split("-", var.fabric_asn_range)[1]
    }
  ]
}

resource "apstra_asn_pool" "DC-CF-External-ASN" {
  name = "DC-CF-External-ASN"
  ranges = [
    {
      first = split("-", var.external_asn_range)[0]
      last  = split("-", var.external_asn_range)[1]
    }
  ]
}

resource "apstra_ipv4_pool" "DC-CF-Loopbacks" {
  name = "DC-CF-Loopbacks"
  subnets = [
    { network = var.ipv4_fabric_loopback_pool }
  ]
}

resource "apstra_ipv4_pool" "DC-CF-Fabric-IPs" {
  name = "DC-CF-Fabric-IPs"
  subnets = [
    { network = var.ipv4_fabric_address_pool }
  ]
}

resource "apstra_ipv4_pool" "DC-CF-EVPN-Loopbacks" {
  name = "DC-CF-EVPN-Loopbacks"
  subnets = [
    { network = var.ipv4_evpn_loopback_pool }
  ]
}

resource "apstra_ipv4_pool" "EXT-DC-CF" {
  name = "EXT-DC-CF"
  subnets = [
    { network = var.ipv4_external_address_pool }
  ]
}

locals {
  device_owners = toset([
    "dc_cf_red",
    "dc_cf_blue",
    "dc_cf_mx_external_link1",
    "dc_cf_mx_external_link2",
  ])
}

resource "apstra_tag" "vntags" {
  for_each    = local.device_owners
  name        = each.key
}

