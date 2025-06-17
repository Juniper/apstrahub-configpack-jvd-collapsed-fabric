
# We will build 2 VNs per routing zone, according to the JVD documentation

data "apstra_datacenter_virtual_network_binding_constructor" "red_400" {
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
    vlan_id    = "400"
    switch_ids   = [ 
      apstra_datacenter_device_allocation.interface_map_assignment["dc_cf_rack_001_leaf1"].node_id,
      apstra_datacenter_device_allocation.interface_map_assignment["dc_cf_rack_001_leaf2"].node_id
    ]
}

resource "apstra_datacenter_virtual_network" "dc_cf_vn1_red" {
  name                         = "dc_cf_vn1_red"
  blueprint_id                 = apstra_datacenter_blueprint.DC-CF.id
  type                         = "vxlan"
  routing_zone_id              = apstra_datacenter_routing_zone.red.id
  ipv4_connectivity_enabled    = true
  ipv4_virtual_gateway_enabled = true
  ipv4_virtual_gateway         = "10.0.0.1"
  ipv4_subnet                  = "10.0.0.0/24"
  vni                          = "10400"
  bindings = data.apstra_datacenter_virtual_network_binding_constructor.red_400.bindings
}



data "apstra_datacenter_virtual_network_binding_constructor" "red_401" {
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
    vlan_id    = "401"
    switch_ids   = [
      apstra_datacenter_device_allocation.interface_map_assignment["dc_cf_rack_001_leaf1"].node_id,
      apstra_datacenter_device_allocation.interface_map_assignment["dc_cf_rack_001_leaf2"].node_id
    ]
}

resource "apstra_datacenter_virtual_network" "dc_cf_vn2_red" {
  name                         = "dc_cf_vn2_red"
  blueprint_id                 = apstra_datacenter_blueprint.DC-CF.id
  type                         = "vxlan"
  routing_zone_id              = apstra_datacenter_routing_zone.red.id
  ipv4_connectivity_enabled    = true
  ipv4_virtual_gateway_enabled = true
  ipv4_virtual_gateway         = "10.0.1.1"
  ipv4_subnet                  = "10.0.1.0/24"
  vni                          = "10401"
  bindings = data.apstra_datacenter_virtual_network_binding_constructor.red_401.bindings
}


data "apstra_datacenter_virtual_networks" "dc_cf_vn1_red" {
  depends_on = [apstra_datacenter_virtual_network.dc_cf_vn1_red] // needed otherwise data source will run too early
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  filters = [
    {
      name = "dc_cf_vn1_red"
    },
  ]
}

data "apstra_datacenter_virtual_networks" "dc_cf_vn2_red" {
  depends_on = [apstra_datacenter_virtual_network.dc_cf_vn2_red] // needed otherwise data source will run too early
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  filters = [
    {
      name = "dc_cf_vn2_red"
    },
  ]
}












data "apstra_datacenter_virtual_network_binding_constructor" "blue_1400" {
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
    vlan_id    = "1400"
    switch_ids   = [
      apstra_datacenter_device_allocation.interface_map_assignment["dc_cf_rack_001_leaf1"].node_id,
      apstra_datacenter_device_allocation.interface_map_assignment["dc_cf_rack_001_leaf2"].node_id
    ]
}

resource "apstra_datacenter_virtual_network" "dc_cf_vn1_blue" {
  name                         = "dc_cf_vn1_blue"
  blueprint_id                 = apstra_datacenter_blueprint.DC-CF.id
  type                         = "vxlan"
  routing_zone_id              = apstra_datacenter_routing_zone.blue.id
  ipv4_connectivity_enabled    = true
  ipv4_virtual_gateway_enabled = true
  ipv4_virtual_gateway         = "10.10.0.1"
  ipv4_subnet                  = "10.10.0.0/24"
  vni                          = "11400"
  bindings = data.apstra_datacenter_virtual_network_binding_constructor.blue_1400.bindings
}



data "apstra_datacenter_virtual_network_binding_constructor" "blue_1401" {
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
    vlan_id    = "1401"
    switch_ids   = [
      apstra_datacenter_device_allocation.interface_map_assignment["dc_cf_rack_001_leaf1"].node_id,
      apstra_datacenter_device_allocation.interface_map_assignment["dc_cf_rack_001_leaf2"].node_id
    ]
}

resource "apstra_datacenter_virtual_network" "dc_cf_vn2_blue" {
  name                         = "dc_cf_vn2_blue"
  blueprint_id                 = apstra_datacenter_blueprint.DC-CF.id
  type                         = "vxlan"
  routing_zone_id              = apstra_datacenter_routing_zone.blue.id
  ipv4_connectivity_enabled    = true
  ipv4_virtual_gateway_enabled = true
  ipv4_virtual_gateway         = "10.10.1.1"
  ipv4_subnet                  = "10.10.1.0/24"
  vni                          = "11401"
  bindings = data.apstra_datacenter_virtual_network_binding_constructor.blue_1401.bindings
}




data "apstra_datacenter_virtual_networks" "dc_cf_vn1_blue" {
  depends_on = [apstra_datacenter_virtual_network.dc_cf_vn1_blue] // needed otherwise data source will run too early
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  filters = [
    {
      name = "dc_cf_vn1_blue"
    },
  ]
}

data "apstra_datacenter_virtual_networks" "dc_cf_vn2_blue" {
  depends_on = [apstra_datacenter_virtual_network.dc_cf_vn2_blue] // needed otherwise data source will run too early
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  filters = [
    {
      name = "dc_cf_vn2_blue"
    },
  ]
}

