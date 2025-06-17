# create routing zones in Apstra which translate to IP VRFs on the devices

resource "apstra_datacenter_routing_zone" "blue" {
  name              = "blue"
  blueprint_id      = apstra_datacenter_blueprint.DC-CF.id
  vlan_id           = var.blue_rz_vlan_id
  vni               = var.blue_rz_vni
  junos_evpn_irb_mode   = "asymmetric"
}

resource "apstra_datacenter_routing_zone" "red" {
  name              = "red"
  blueprint_id      = apstra_datacenter_blueprint.DC-CF.id
  vlan_id           = var.red_rz_vlan_id
  vni               = var.red_rz_vni
  junos_evpn_irb_mode   = "asymmetric"
}


# assign loopbacks for each routing zone

resource "apstra_datacenter_resource_pool_allocation" "blue_rz_loopback" {
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id // adds implicit dependency on blueprint creation
  role         = "leaf_loopback_ips"
  pool_ids     = [apstra_ipv4_pool.DC-CF-EVPN-Loopbacks.id]
  routing_zone_id = apstra_datacenter_routing_zone.blue.id // adds implicit dependency on RZ creation
}

resource "apstra_datacenter_resource_pool_allocation" "red_rz_loopback" {
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id // adds implicit dependency on blueprint creation
  role         = "leaf_loopback_ips"
  pool_ids     = [apstra_ipv4_pool.DC-CF-EVPN-Loopbacks.id]
  routing_zone_id = apstra_datacenter_routing_zone.red.id // adds implicit dependency on RZ creation
}


resource "apstra_datacenter_routing_policy" "external_router_mx" {
  blueprint_id  = apstra_datacenter_blueprint.DC-CF.id
  name          = "external_router"
  import_policy = "default_only" // "default_only" is the default. other options: "all" "extra_only"
  extra_exports = [
    { prefix = "0.0.0.0/0", ge_mask = 1,   le_mask = 32,   action = "permit"   }
  ]
  export_policy = {
    export_l3_edge_server_links   = true
    export_l2_edge_subnets        = true
    export_loopbacks              = true
    export_static_routes          = null
  }
  expect_default_ipv4 = true
}
