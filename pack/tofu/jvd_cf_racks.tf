
# Defining the rack type according to the JVD, with connections to 
# - external gateway from each leaf
# - 1 ESI connected host
# - 1 single connected host to each leaf

resource "apstra_rack_type" "DC-CF-Rack" {
  name                       = "DC-CF-Rack"
  description                = "Created by Terraform"
  fabric_connectivity_design = "l3collapsed"
  leaf_switches = {
    "cf_leaf" = {
      logical_device_id   = apstra_logical_device.DC-CF-Leaf.id
      redundancy_protocol = "esi"
    }
  }
  generic_systems = {
    dc_cf_external = {
      count             = 1
      logical_device_id = "AOS-2x10-1"
      links = {
        dc3_external_10G = {
          tag_ids            = [
                                resource.apstra_tag.vntags["dc_cf_mx_external_link1"].id
                               ]
          speed              = "10G"
          target_switch_name = "cf_leaf"
          switch_peer        = "first"
        },
        dc_cf_externa1_10G_2 = {
          tag_ids            = [
                                resource.apstra_tag.vntags["dc_cf_mx_external_link2"].id
                               ]
          speed              = "10G"
          target_switch_name = "cf_leaf"
          switch_peer        = "second"
        }
      }
    },
    cf_single1 = {
      count             = 1
      logical_device_id = "AOS-1x10-1"
      links = {
        cf_single1_10G = {
          tag_ids            = [
                                resource.apstra_tag.vntags["dc_cf_blue"].id,
                                resource.apstra_tag.vntags["dc_cf_red"].id
                               ]
          speed              = "10G"
          target_switch_name = "cf_leaf"
          switch_peer        = "first"
        }
      }
    },
    cf_esi = {
      count             = 1
      logical_device_id = "AOS-2x10-1"
      links = {
        cf_lag = {
          tag_ids            = [
                                resource.apstra_tag.vntags["dc_cf_blue"].id,
                                resource.apstra_tag.vntags["dc_cf_red"].id
                               ]
          speed              = "10G"
          target_switch_name = "cf_leaf"
          lag_mode           = "lacp_active"
        }
      }
    },
    cf_single2 = {
      count             = 1
      logical_device_id = "AOS-1x10-1"
      links = {
        cf_single2_10G = {
          tag_ids            = [
                                resource.apstra_tag.vntags["dc_cf_blue"].id,
                                resource.apstra_tag.vntags["dc_cf_red"].id
                               ]
          speed              = "10G"
          target_switch_name = "cf_leaf"
          switch_peer        = "second"
        }
      }
    }
  }
}


