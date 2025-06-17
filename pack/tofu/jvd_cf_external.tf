# Build the connectivity template for the links and BGP session to the external gateway.

resource "apstra_datacenter_connectivity_template_interface" "mx-external" {
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  name         = "mx-external"
  ip_links = {
       red_ext = {
        vlan_id=199
        ipv4_addressing_type = "numbered"
        ipv6_addressing_type = "none"
        routing_zone_id= apstra_datacenter_routing_zone.blue.id
        bgp_peering_generic_systems= {
             red_ext_bgp = {
                  ipv4_addressing_type = "addressed"
                  ipv6_addressing_type = "none"
                  bfd_enabled = false
                  neighbor_asn_dynamic = false
                  peer_from_loopback = false
                  peer_to = "interface_or_ip_endpoint"
                  ttl=2
                  routing_policies = {
                    red_ext_policy = {
                    routing_policy_id = apstra_datacenter_routing_policy.external_router_mx.id
                    }
                  }    
             }
         }
       },
       blue_ext = {
        vlan_id=299
        ipv4_addressing_type = "numbered"
        ipv6_addressing_type = "none"
        routing_zone_id= apstra_datacenter_routing_zone.blue.id
        bgp_peering_generic_systems= {
             blue_ext_bgp = {
                  ipv4_addressing_type = "addressed"
                  ipv6_addressing_type = "none"
                  bfd_enabled = false
                  neighbor_asn_dynamic = false
                  peer_from_loopback = false
                  peer_to = "interface_or_ip_endpoint"
                  ttl=2
                  routing_policies = {
                    blue_ext_policy = {
                    routing_policy_id = apstra_datacenter_routing_policy.external_router_mx.id
                    }
                  }
             }
         }
       }
    }
}


# Using the link tags, assign the interfaces to be used for the PER-VRF VLANs and BGP peers to the 
# exeternal gateway

data "apstra_datacenter_interfaces_by_link_tag" "mx_external_link1" {
    blueprint_id= apstra_datacenter_blueprint.DC-CF.id
    tags= ["dc_cf_mx_external_link1"]
}

data "apstra_datacenter_interfaces_by_link_tag" "mx_external_link2" {
    blueprint_id= apstra_datacenter_blueprint.DC-CF.id
    tags= ["dc_cf_mx_external_link2"]
}



resource "apstra_datacenter_connectivity_templates_assignment" "ext1" {
  blueprint_id             = apstra_datacenter_blueprint.DC-CF.id
  connectivity_template_ids = [ apstra_datacenter_connectivity_template_interface.mx-external.id ]
  application_point_id =   one(data.apstra_datacenter_interfaces_by_link_tag.mx_external_link1.ids)
  fetch_ip_link_ids = true
}
resource "apstra_datacenter_connectivity_templates_assignment" "ext2" {
  blueprint_id             = apstra_datacenter_blueprint.DC-CF.id
  connectivity_template_ids = [ apstra_datacenter_connectivity_template_interface.mx-external.id ]
  application_point_id =   one(data.apstra_datacenter_interfaces_by_link_tag.mx_external_link2.ids)
  fetch_ip_link_ids = true
}


resource "apstra_datacenter_ip_link_addressing" "ext1_red" {
  depends_on = [apstra_datacenter_connectivity_templates_assignment.ext1]
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  link_id      = apstra_datacenter_connectivity_templates_assignment.ext1.ip_link_ids[apstra_datacenter_connectivity_template_interface.mx-external.id][199]
  switch_ipv4_address_type = "numbered"        # none | numbered
  switch_ipv4_address      = var.leaf1_red_to_external_ip

  generic_ipv4_address_type = "numbered"       # none | numbered
  generic_ipv4_address      = var.external_to_leaf1_red_ip
}


resource "apstra_datacenter_ip_link_addressing" "ext2_red" {
  depends_on = [apstra_datacenter_connectivity_templates_assignment.ext2]
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  link_id      = apstra_datacenter_connectivity_templates_assignment.ext2.ip_link_ids[apstra_datacenter_connectivity_template_interface.mx-external.id][199]
  switch_ipv4_address_type = "numbered"        # none | numbered
  switch_ipv4_address      = var.leaf2_red_to_external_ip

  generic_ipv4_address_type = "numbered"       # none | numbered
  generic_ipv4_address      = var.external_to_leaf2_red_ip
}


resource "apstra_datacenter_ip_link_addressing" "ext1_blue" {
  depends_on = [apstra_datacenter_connectivity_templates_assignment.ext1]
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  link_id      = apstra_datacenter_connectivity_templates_assignment.ext1.ip_link_ids[apstra_datacenter_connectivity_template_interface.mx-external.id][299]
  switch_ipv4_address_type = "numbered"        # none | numbered
  switch_ipv4_address      = var.leaf1_blue_to_external_ip

  generic_ipv4_address_type = "numbered"       # none | numbered
  generic_ipv4_address      = var.external_to_leaf1_blue_ip
}

resource "apstra_datacenter_ip_link_addressing" "ext2_blue" {
  depends_on = [apstra_datacenter_connectivity_templates_assignment.ext2]
  blueprint_id = apstra_datacenter_blueprint.DC-CF.id
  link_id      = apstra_datacenter_connectivity_templates_assignment.ext2.ip_link_ids[apstra_datacenter_connectivity_template_interface.mx-external.id][299]
  switch_ipv4_address_type = "numbered"        # none | numbered
  switch_ipv4_address      = var.leaf2_blue_to_external_ip

  generic_ipv4_address_type = "numbered"       # none | numbered
  generic_ipv4_address      = var.external_to_leaf2_blue_ip
}

