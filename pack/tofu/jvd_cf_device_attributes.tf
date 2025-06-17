# define attributes for the devices

locals {
    devices = {
        dc_cf_rack_001_leaf1 = {
            label = "dc_cf_rack_001_leaf1",
            interface_map = local.derived_if_map_id[var.leaf_model]
        },
        dc_cf_rack_001_leaf2 = {
            label = "dc_cf_rack_001_leaf2",
            interface_map = local.derived_if_map_id[var.leaf_model]
        },
    }
}
