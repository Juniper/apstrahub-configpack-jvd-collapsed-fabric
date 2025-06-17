
# Pre-define all supported device interface maps for this JVD.  

resource "apstra_modular_device_profile" "MFT_QFX5700" {
  name               = "MFT_QFX5700"
  chassis_profile_id = "Juniper_QFX5700"
  line_card_profile_ids = {
    0 = "Juniper_JNP_FPC_16C"
    1 = "Juniper_JNP_FPC_16C"
    2 = "Juniper_JNP_FPC_16C"
    3 = "Juniper_JNP_FPC_16C"
    4 = "Juniper_JNP_FPC_16C"
  }
}





resource "apstra_interface_map" "DC-CF-Leaf_QFX5120_48YM" {
  name              = "DC-CF-Leaf_QFX5120_48YM"
  logical_device_id = apstra_logical_device.DC-CF-Leaf.id
  device_profile_id = "Juniper_QFX5120-48YM_Junos"
  interfaces = [
    { 
      "logical_device_port"     = "1/1"
      "physical_interface_name" = "xe-0/0/0"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/2"
      "physical_interface_name" = "xe-0/0/1"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/3"
      "physical_interface_name" = "xe-0/0/2"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/4"
      "physical_interface_name" = "xe-0/0/3"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/5"
      "physical_interface_name" = "xe-0/0/4"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/6"
      "physical_interface_name" = "xe-0/0/5"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/7"
      "physical_interface_name" = "xe-0/0/6"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/8"
      "physical_interface_name" = "xe-0/0/7"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/9"
      "physical_interface_name" = "xe-0/0/8"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/10"
      "physical_interface_name" = "xe-0/0/9"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/11"
      "physical_interface_name" = "xe-0/0/10"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/12"
      "physical_interface_name" = "xe-0/0/11"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/13"
      "physical_interface_name" = "xe-0/0/12"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/14"
      "physical_interface_name" = "xe-0/0/13"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/15"
      "physical_interface_name" = "xe-0/0/14"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/16"
      "physical_interface_name" = "xe-0/0/15"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/17"
      "physical_interface_name" = "xe-0/0/16"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/18"
      "physical_interface_name" = "xe-0/0/17"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/19"
      "physical_interface_name" = "xe-0/0/18"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/20"
      "physical_interface_name" = "xe-0/0/19"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/21"
      "physical_interface_name" = "xe-0/0/20"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/22"
      "physical_interface_name" = "xe-0/0/21"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/23"
      "physical_interface_name" = "xe-0/0/22"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/24"
      "physical_interface_name" = "xe-0/0/23"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/25"
      "physical_interface_name" = "xe-0/0/24"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/26"
      "physical_interface_name" = "xe-0/0/25"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/27"
      "physical_interface_name" = "xe-0/0/26"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/28"
      "physical_interface_name" = "xe-0/0/27"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/29"
      "physical_interface_name" = "xe-0/0/28"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/30"
      "physical_interface_name" = "xe-0/0/29"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/31"
      "physical_interface_name" = "xe-0/0/30"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/32"
      "physical_interface_name" = "xe-0/0/31"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/33"
      "physical_interface_name" = "xe-0/0/32"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/34"
      "physical_interface_name" = "xe-0/0/33"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/35"
      "physical_interface_name" = "xe-0/0/34"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/36"
      "physical_interface_name" = "xe-0/0/35"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/37"
      "physical_interface_name" = "xe-0/0/36"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/38"
      "physical_interface_name" = "xe-0/0/37"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/39"
      "physical_interface_name" = "xe-0/0/38"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/40"
      "physical_interface_name" = "xe-0/0/39"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/41"
      "physical_interface_name" = "xe-0/0/40"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/42"
      "physical_interface_name" = "xe-0/0/41"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/43"
      "physical_interface_name" = "xe-0/0/42"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/44"
      "physical_interface_name" = "xe-0/0/43"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/45"
      "physical_interface_name" = "xe-0/0/44"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/46"
      "physical_interface_name" = "xe-0/0/45"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/47"
      "physical_interface_name" = "xe-0/0/46"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "1/48"
      "physical_interface_name" = "xe-0/0/47"
      "transformation_id"       = 2
    },
    {
      "logical_device_port"     = "2/1"
      "physical_interface_name" = "et-0/0/48"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/2"
      "physical_interface_name" = "et-0/0/49"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/3"
      "physical_interface_name" = "et-0/0/50"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/4"
      "physical_interface_name" = "et-0/0/51"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/5"
      "physical_interface_name" = "et-0/0/52"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/6"
      "physical_interface_name" = "et-0/0/53"
      "transformation_id"       = 1
    },
  ]
}






resource "apstra_interface_map" "DC-CF-Leaf_QFX5700" {
  name              = "DC-CF-Leaf_QFX5700"
  logical_device_id = apstra_logical_device.DC-CF-Leaf.id
  device_profile_id = apstra_modular_device_profile.MFT_QFX5700.id
  interfaces = [
    {
      "logical_device_port"     = "1/1"
      "physical_interface_name" = "et-0/0/8:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/2"
      "physical_interface_name" = "et-0/0/8:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/3"
      "physical_interface_name" = "et-0/0/8:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/4"
      "physical_interface_name" = "et-0/0/8:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/5"
      "physical_interface_name" = "et-0/0/12:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/6"
      "physical_interface_name" = "et-0/0/12:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/7"
      "physical_interface_name" = "et-0/0/12:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/8"
      "physical_interface_name" = "et-0/0/12:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/9"
      "physical_interface_name" = "et-1/0/0:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/10"
      "physical_interface_name" = "et-1/0/0:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/11"
      "physical_interface_name" = "et-1/0/0:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/12"
      "physical_interface_name" = "et-1/0/0:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/13"
      "physical_interface_name" = "et-1/0/4:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/14"
      "physical_interface_name" = "et-1/0/4:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/15"
      "physical_interface_name" = "et-1/0/4:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/16"
      "physical_interface_name" = "et-1/0/4:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/17"
      "physical_interface_name" = "et-1/0/8:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/18"
      "physical_interface_name" = "et-1/0/8:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/19"
      "physical_interface_name" = "et-1/0/8:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/20"
      "physical_interface_name" = "et-1/0/8:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/21"
      "physical_interface_name" = "et-1/0/12:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/22"
      "physical_interface_name" = "et-1/0/12:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/23"
      "physical_interface_name" = "et-1/0/12:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/24"
      "physical_interface_name" = "et-1/0/12:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/25"
      "physical_interface_name" = "et-2/0/0:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/26"
      "physical_interface_name" = "et-2/0/0:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/27"
      "physical_interface_name" = "et-2/0/0:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/28"
      "physical_interface_name" = "et-2/0/0:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/29"
      "physical_interface_name" = "et-2/0/4:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/30"
      "physical_interface_name" = "et-2/0/4:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/31"
      "physical_interface_name" = "et-2/0/4:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/32"
      "physical_interface_name" = "et-2/0/4:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/33"
      "physical_interface_name" = "et-2/0/8:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/34"
      "physical_interface_name" = "et-2/0/8:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/35"
      "physical_interface_name" = "et-2/0/8:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/36"
      "physical_interface_name" = "et-2/0/8:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/37"
      "physical_interface_name" = "et-2/0/12:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/38"
      "physical_interface_name" = "et-2/0/12:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/39"
      "physical_interface_name" = "et-2/0/12:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/40"
      "physical_interface_name" = "et-2/0/12:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/41"
      "physical_interface_name" = "et-3/0/0:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/42"
      "physical_interface_name" = "et-3/0/0:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/43"
      "physical_interface_name" = "et-3/0/0:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/44"
      "physical_interface_name" = "et-3/0/0:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/45"
      "physical_interface_name" = "et-3/0/4:0"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/46"
      "physical_interface_name" = "et-3/0/4:1"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/47"
      "physical_interface_name" = "et-3/0/4:2"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "1/48"
      "physical_interface_name" = "et-3/0/4:3"
      "transformation_id"       = 5
    },
    {
      "logical_device_port"     = "2/1"
      "physical_interface_name" = "et-0/0/0"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/2"
      "physical_interface_name" = "et-0/0/1"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/3"
      "physical_interface_name" = "et-0/0/2"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/4"
      "physical_interface_name" = "et-0/0/3"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/5"
      "physical_interface_name" = "et-0/0/4"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/6"
      "physical_interface_name" = "et-0/0/5"
      "transformation_id"       = 1
    },
  ]
}






resource "apstra_interface_map" "DC-CF-Leaf_PTX10001_36MR" {
  name              = "DC-CF-Leaf_PTX10001_36MR"
  logical_device_id = apstra_logical_device.DC-CF-Leaf.id
  device_profile_id = "Juniper_PTX10001-36MR_Junos"
  interfaces = [
    {
      "logical_device_port"     = "1/1"
      "physical_interface_name" = "et-0/1/4:0"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "1/2"
      "physical_interface_name" = "et-0/1/4:1"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "1/3"
      "physical_interface_name" = "et-0/1/4:2"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "1/4"
      "physical_interface_name" = "et-0/1/4:3"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "1/5"
      "physical_interface_name" = "et-0/1/6:0"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "1/6"
      "physical_interface_name" = "et-0/1/6:1"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "1/7"
      "physical_interface_name" = "et-0/1/6:2"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "1/8"
      "physical_interface_name" = "et-0/1/6:3"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "1/9"
      "physical_interface_name" = "et-0/1/0:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/10"
      "physical_interface_name" = "et-0/1/0:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/11"
      "physical_interface_name" = "et-0/1/0:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/12"
      "physical_interface_name" = "et-0/1/0:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/13"
      "physical_interface_name" = "et-0/1/1:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/14"
      "physical_interface_name" = "et-0/1/1:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/15"
      "physical_interface_name" = "et-0/1/1:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/16"
      "physical_interface_name" = "et-0/1/1:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/17"
      "physical_interface_name" = "et-0/1/2:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/18"
      "physical_interface_name" = "et-0/1/2:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/19"
      "physical_interface_name" = "et-0/1/2:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/20"
      "physical_interface_name" = "et-0/1/2:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/21"
      "physical_interface_name" = "et-0/1/3:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/22"
      "physical_interface_name" = "et-0/1/3:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/23"
      "physical_interface_name" = "et-0/1/3:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/24"
      "physical_interface_name" = "et-0/1/3:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/25"
      "physical_interface_name" = "et-0/1/8:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/26"
      "physical_interface_name" = "et-0/1/8:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/27"
      "physical_interface_name" = "et-0/1/8:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/28"
      "physical_interface_name" = "et-0/1/8:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/29"
      "physical_interface_name" = "et-0/1/9:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/30"
      "physical_interface_name" = "et-0/1/9:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/31"
      "physical_interface_name" = "et-0/1/9:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/32"
      "physical_interface_name" = "et-0/1/9:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/33"
      "physical_interface_name" = "et-0/1/10:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/34"
      "physical_interface_name" = "et-0/1/10:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/35"
      "physical_interface_name" = "et-0/1/10:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/36"
      "physical_interface_name" = "et-0/1/10:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/37"
      "physical_interface_name" = "et-0/1/11:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/38"
      "physical_interface_name" = "et-0/1/11:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/39"
      "physical_interface_name" = "et-0/1/11:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/40"
      "physical_interface_name" = "et-0/1/11:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/41"
      "physical_interface_name" = "et-0/2/0:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/42"
      "physical_interface_name" = "et-0/2/0:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/43"
      "physical_interface_name" = "et-0/2/0:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/44"
      "physical_interface_name" = "et-0/2/0:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/45"
      "physical_interface_name" = "et-0/2/1:0"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/46"
      "physical_interface_name" = "et-0/2/1:1"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/47"
      "physical_interface_name" = "et-0/2/1:2"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "1/48"
      "physical_interface_name" = "et-0/2/1:3"
      "transformation_id"       = 12
    },
    {
      "logical_device_port"     = "2/1"
      "physical_interface_name" = "et-0/0/0"
      "transformation_id"       = 8
    },
    {
      "logical_device_port"     = "2/2"
      "physical_interface_name" = "et-0/0/1"
      "transformation_id"       = 8
    },
    {
      "logical_device_port"     = "2/3"
      "physical_interface_name" = "et-0/0/2"
      "transformation_id"       = 8
    },
    {
      "logical_device_port"     = "2/4"
      "physical_interface_name" = "et-0/0/3"
      "transformation_id"       = 8
    },
    {
      "logical_device_port"     = "2/5"
      "physical_interface_name" = "et-0/0/4"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/6"
      "physical_interface_name" = "et-0/0/5"
      "transformation_id"       = 1
    },
  ]
}





resource "apstra_interface_map" "DC-CF-Leaf_QFX5130_32CD" {
  name              = "DC-Leaf_QFX5130_32CD"
  logical_device_id = apstra_logical_device.DC-CF-Leaf.id
  device_profile_id = "Juniper_QFX5130-32CD_Junos"
  interfaces = [
    {
      "logical_device_port"     = "1/1"
      "physical_interface_name" = "et-0/0/6:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/2"
      "physical_interface_name" = "et-0/0/6:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/3"
      "physical_interface_name" = "et-0/0/6:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/4"
      "physical_interface_name" = "et-0/0/6:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/5"
      "physical_interface_name" = "et-0/0/7:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/6"
      "physical_interface_name" = "et-0/0/7:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/7"
      "physical_interface_name" = "et-0/0/7:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/8"
      "physical_interface_name" = "et-0/0/7:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/9"
      "physical_interface_name" = "et-0/0/8:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/10"
      "physical_interface_name" = "et-0/0/8:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/11"
      "physical_interface_name" = "et-0/0/8:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/12"
      "physical_interface_name" = "et-0/0/8:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/13"
      "physical_interface_name" = "et-0/0/9:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/14"
      "physical_interface_name" = "et-0/0/9:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/15"
      "physical_interface_name" = "et-0/0/9:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/16"
      "physical_interface_name" = "et-0/0/9:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/17"
      "physical_interface_name" = "et-0/0/10:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/18"
      "physical_interface_name" = "et-0/0/10:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/19"
      "physical_interface_name" = "et-0/0/10:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/20"
      "physical_interface_name" = "et-0/0/10:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/21"
      "physical_interface_name" = "et-0/0/13:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/22"
      "physical_interface_name" = "et-0/0/13:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/23"
      "physical_interface_name" = "et-0/0/13:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/24"
      "physical_interface_name" = "et-0/0/13:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/25"
      "physical_interface_name" = "et-0/0/14:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/26"
      "physical_interface_name" = "et-0/0/14:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/27"
      "physical_interface_name" = "et-0/0/14:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/28"
      "physical_interface_name" = "et-0/0/14:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/29"
      "physical_interface_name" = "et-0/0/15:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/30"
      "physical_interface_name" = "et-0/0/15:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/31"
      "physical_interface_name" = "et-0/0/15:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/32"
      "physical_interface_name" = "et-0/0/15:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/33"
      "physical_interface_name" = "et-0/0/16:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/34"
      "physical_interface_name" = "et-0/0/16:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/35"
      "physical_interface_name" = "et-0/0/16:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/36"
      "physical_interface_name" = "et-0/0/16:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/37"
      "physical_interface_name" = "et-0/0/17:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/38"
      "physical_interface_name" = "et-0/0/17:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/39"
      "physical_interface_name" = "et-0/0/17:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/40"
      "physical_interface_name" = "et-0/0/17:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/41"
      "physical_interface_name" = "et-0/0/18:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/42"
      "physical_interface_name" = "et-0/0/18:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/43"
      "physical_interface_name" = "et-0/0/18:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/44"
      "physical_interface_name" = "et-0/0/18:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/45"
      "physical_interface_name" = "et-0/0/19:0"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/46"
      "physical_interface_name" = "et-0/0/19:1"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/47"
      "physical_interface_name" = "et-0/0/19:2"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "1/48"
      "physical_interface_name" = "et-0/0/19:3"
      "transformation_id"       = 6
    },
    {
      "logical_device_port"     = "2/1"
      "physical_interface_name" = "et-0/0/0"
      "transformation_id"       = 3
    },
    {
      "logical_device_port"     = "2/2"
      "physical_interface_name" = "et-0/0/1"
      "transformation_id"       = 3
    },
    {
      "logical_device_port"     = "2/3"
      "physical_interface_name" = "et-0/0/2"
      "transformation_id"       = 3
    },
    {
      "logical_device_port"     = "2/4"
      "physical_interface_name" = "et-0/0/3"
      "transformation_id"       = 3
    },
    {
      "logical_device_port"     = "2/5"
      "physical_interface_name" = "et-0/0/11"
      "transformation_id"       = 3
    },
    {
      "logical_device_port"     = "2/6"
      "physical_interface_name" = "et-0/0/12"
      "transformation_id"       = 3
    },
  ]
}









resource "apstra_interface_map" "DC-CF-Leaf_ACX7100_48L" {
  name              = "DC-CF-Leaf_ACX7100_48L"
  logical_device_id = apstra_logical_device.DC-CF-Leaf.id
  device_profile_id = "Juniper_ACX7100-48L_Junos"
  interfaces = [
    { 
      "logical_device_port"     = "1/1"
      "physical_interface_name" = "et-0/0/0"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/2"
      "physical_interface_name" = "et-0/0/1"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/3"
      "physical_interface_name" = "et-0/0/2"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/4"
      "physical_interface_name" = "et-0/0/3"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/5"
      "physical_interface_name" = "et-0/0/4"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/6"
      "physical_interface_name" = "et-0/0/5"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/7"
      "physical_interface_name" = "et-0/0/6"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/8"
      "physical_interface_name" = "et-0/0/7"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/9"
      "physical_interface_name" = "et-0/0/8"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/10"
      "physical_interface_name" = "et-0/0/9"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/11"
      "physical_interface_name" = "et-0/0/10"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/12"
      "physical_interface_name" = "et-0/0/11"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/13"
      "physical_interface_name" = "et-0/0/12"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/14"
      "physical_interface_name" = "et-0/0/13"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/15"
      "physical_interface_name" = "et-0/0/14"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/16"
      "physical_interface_name" = "et-0/0/15"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/17"
      "physical_interface_name" = "et-0/0/16"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/18"
      "physical_interface_name" = "et-0/0/17"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/19"
      "physical_interface_name" = "et-0/0/18"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/20"
      "physical_interface_name" = "et-0/0/19"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/21"
      "physical_interface_name" = "et-0/0/20"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/22"
      "physical_interface_name" = "et-0/0/21"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/23"
      "physical_interface_name" = "et-0/0/22"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/24"
      "physical_interface_name" = "et-0/0/23"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/25"
      "physical_interface_name" = "et-0/0/24"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/26"
      "physical_interface_name" = "et-0/0/25"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/27"
      "physical_interface_name" = "et-0/0/26"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/28"
      "physical_interface_name" = "et-0/0/27"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/29"
      "physical_interface_name" = "et-0/0/28"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/30"
      "physical_interface_name" = "et-0/0/29"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/31"
      "physical_interface_name" = "et-0/0/30"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/32"
      "physical_interface_name" = "et-0/0/31"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/33"
      "physical_interface_name" = "et-0/0/32"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/34"
      "physical_interface_name" = "et-0/0/33"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/35"
      "physical_interface_name" = "et-0/0/34"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/36"
      "physical_interface_name" = "et-0/0/35"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/37"
      "physical_interface_name" = "et-0/0/36"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/38"
      "physical_interface_name" = "et-0/0/37"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/39"
      "physical_interface_name" = "et-0/0/38"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/40"
      "physical_interface_name" = "et-0/0/39"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/41"
      "physical_interface_name" = "et-0/0/40"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/42"
      "physical_interface_name" = "et-0/0/41"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/43"
      "physical_interface_name" = "et-0/0/42"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/44"
      "physical_interface_name" = "et-0/0/43"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/45"
      "physical_interface_name" = "et-0/0/44"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/46"
      "physical_interface_name" = "et-0/0/45"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/47"
      "physical_interface_name" = "et-0/0/46"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "1/48"
      "physical_interface_name" = "et-0/0/47"
      "transformation_id"       = 1
    },
    {
      "logical_device_port"     = "2/1"
      "physical_interface_name" = "et-0/0/48"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "2/2"
      "physical_interface_name" = "et-0/0/49"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "2/3"
      "physical_interface_name" = "et-0/0/50"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "2/4"
      "physical_interface_name" = "et-0/0/51"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "2/5"
      "physical_interface_name" = "et-0/0/52"
      "transformation_id"       = 4
    },
    {
      "logical_device_port"     = "2/6"
      "physical_interface_name" = "et-0/0/53"
      "transformation_id"       = 4
    },
  ]
}



