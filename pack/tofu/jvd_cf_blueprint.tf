
# Create a blueprint using the CF Template

resource "apstra_datacenter_blueprint" "DC-CF" {
    name        = "DC-CF"
    template_id = apstra_template_collapsed.cf_template.id
    depends_on = [ apstra_interface_map.DC-CF-Leaf_QFX5120_48YM,
                   apstra_interface_map.DC-CF-Leaf_QFX5700,
                   apstra_interface_map.DC-CF-Leaf_PTX10001_36MR,
                   apstra_interface_map.DC-CF-Leaf_QFX5130_32CD,
                   apstra_interface_map.DC-CF-Leaf_ACX7100_48L,
    ]
}



# ASN and IPv4 pools will be allocated using looping resources. 

locals {
  asn_pools = {
    leaf_asns  = [apstra_asn_pool.DC-CF-ASNs.id]
    generic_asns = [apstra_asn_pool.DC-CF-External-ASN.id]
  }
  ipv4_pools = {
    leaf_loopback_ips   = [apstra_ipv4_pool.DC-CF-Loopbacks.id]
    leaf_leaf_link_ips = [apstra_ipv4_pool.DC-CF-Fabric-IPs.id]
  }
}


# Assign interface maps to fabric roles to eliminate build errors

resource "apstra_datacenter_device_allocation" "interface_map_assignment" {
  for_each         = local.devices
  blueprint_id     = apstra_datacenter_blueprint.DC-CF.id
  node_name        = each.key
  initial_interface_map_id = each.value.interface_map
}


# Assign ASN pools to fabric roles to eliminate build errors 

resource "apstra_datacenter_resource_pool_allocation" "asn" {
  for_each     = local.asn_pools
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  role         = each.key
  pool_ids     = each.value
}


# Assign IPv4 pools to fabric roles to eliminate build errors 

resource "apstra_datacenter_resource_pool_allocation" "ipv4" {
  for_each     = local.ipv4_pools
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  role         = each.key
  pool_ids     = each.value
}
