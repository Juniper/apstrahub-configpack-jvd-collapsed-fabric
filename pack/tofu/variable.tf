#  Copyright (c) Juniper Networks, Inc., 2025-2025.
#  All rights reserved.
#  SPDX-License-Identifier: MIT


# To choose the appropriate interface map for your setup
variable "leaf_model" {
  type = string
  description = "Supported options are QFX5120_48YM, QFX5700, PTX10001_36MR, QFX5130_32CD, ACX7100_48L"
  default = "QFX5700"

  validation {
    condition     = var.leaf_model == "QFX5120_48YM" || var.leaf_model == "QFX5700" || var.leaf_model == "PTX10001_36MR" || var.leaf_model == "QFX5130_32CD" || var.leaf_model == "ACX7100_48L"
    error_message = "The leaf_model value must be one of QFX5120_48YM, QFX5700, PTX10001_36MR, QFX5130_32CD, ACX7100_48L"
  }

}

locals {
  derived_if_map_id = {
    "QFX5120_48YM" = apstra_interface_map.DC-CF-Leaf_QFX5120_48YM.id
    "QFX5700" = apstra_interface_map.DC-CF-Leaf_QFX5700.id
    "PTX10001_36MR" = apstra_interface_map.DC-CF-Leaf_PTX10001_36MR.id
    "QFX5130_32CD" = apstra_interface_map.DC-CF-Leaf_QFX5130_32CD.id
    "ACX7100_48L" = apstra_interface_map.DC-CF-Leaf_ACX7100_48L.id
  }
}


variable "fabric_asn_range" {
  type    = string
  description = "Internal Fabric ASN range, i.e. 65000-65010"
  default = "65000-65010"

  validation {
    condition = (length(regexall("^[0-9]+-[0-9]+$", var.fabric_asn_range))==1)
    error_message = "The ASN range must be ASN1-ASN2"
  }
}

variable "external_asn_range" {
  type    = string
  description = "External Device ASN range, i.e. 65000-65010"
  default = "65000-65010"

  validation {
    condition = (length(regexall("^[0-9]+-[0-9]+$", var.external_asn_range))==1)
    error_message = "The ASN range must be ASN1-ASN2"
  }
}

variable "ipv4_fabric_loopback_pool" {
  type    = string
  description = "IPv4 loopback address pool for the fabric, i.e. 192.168.10.0/24"
  default = "192.168.10.0/24"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.ipv4_fabric_loopback_pool))==1)
    error_message = "The IP pool must be IP_ADDR/MASK"
  }
}

variable "ipv4_fabric_address_pool" {
  type    = string
  description = "IPv4 interface address pool for the fabric, i.e. 192.168.100.0/24"
  default = "192.168.100.0/24"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.ipv4_fabric_address_pool))==1)
    error_message = "The IP pool must be IP_ADDR/MASK"
  }
}

variable "ipv4_external_address_pool" {
  type    = string
  description = "IPv4 interface addresses pool for the external connections, i.e. 192.168.110.0/24"
  default = "192.168.110.0/24"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.ipv4_external_address_pool))==1)
    error_message = "The IP pool must be IP_ADDR/MASK"
  }
}

variable "ipv4_evpn_loopback_pool" {
  type    = string
  description = "IPv4 EVPN loopback address pool, i.e. 192.168.120.0/24"
  default = "192.168.120.0/24"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.ipv4_evpn_loopback_pool))==1)
    error_message = "The IP pool must be IP_ADDR/MASK"
  }
}


variable "red_rz_vlan_id" {
  type    = number
  description = "VLAN ID used for RED routing zone"
  default = 6

  validation {
    condition      = var.red_rz_vlan_id < 4001
    error_message = "The VLAN ID must be between 1-4000"
  }
}

variable "blue_rz_vlan_id" {
  type    = number
  description = "VLAN ID used for BLUE routing zone"
  default = 5

  validation {
    condition      = var.blue_rz_vlan_id < 4001
    error_message = "The VLAN ID must be between 1-4000"
  }
}

variable "red_rz_vni" {
  type    = number
  description = "VNI used for RED routing zone"
  default = 6000

  validation {
    condition      = var.red_rz_vni >= 4096 && var.red_rz_vni <= 16777214
    error_message = "The VNI must be between 4096-16777214"
  }
}

variable "blue_rz_vni" {
  type    = number
  description = "VNI used for BLUE routing zone"
  default = 5000

  validation {
    condition      = var.blue_rz_vni >= 4096 && var.blue_rz_vni <= 16777214
    error_message = "The VNI must be between 4096-16777214"
  }
}


variable "leaf1_red_to_external_ip" {
  type    = string
  description = "IPv4 address with subnet mask for leaf1 to external gateway in RED VRF, i.e. 10.1.0.0/31"
  default = "10.1.0.0/31"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.leaf1_red_to_external_ip))==1)
    error_message = "The IP address must be IP_ADDR/MASK"
  }
}

variable "external_to_leaf1_red_ip" {
  type    = string
  description = "IPv4 address with subnet mask for external Gateway to leaf1 in RED VRF, i.e. 10.1.0.1/31"
  default = "10.1.0.1/31"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.external_to_leaf1_red_ip))==1)
    error_message = "The IP address must be IP_ADDR/MASK"
  }
}


variable "leaf2_red_to_external_ip" {
  type    = string
  description = "IPv4 address with subnet mask for leaf2 in RED VRF to external gateway, i.e. 10.2.0.0/31"
  default = "10.2.0.0/31"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.leaf2_red_to_external_ip))==1)
    error_message = "The IP address must be IP_ADDR/MASK"
  }
}

variable "external_to_leaf2_red_ip" {
  type    = string
  description = "IPv4 address with subnet mask for external Gateway to leaf2 in RED VRF, i.e. 10.2.0.1/31"
  default = "10.2.0.1/31"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.external_to_leaf2_red_ip))==1)
    error_message = "The IP address must be IP_ADDR/MASK"
  }
}


variable "leaf1_blue_to_external_ip" {
  type    = string
  description = "IPv4 address with subnet mask for leaf1 in BLUE VRF to external gateway, i.e. 10.1.0.0/31"
  default = "10.1.1.0/31"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.leaf1_blue_to_external_ip))==1)
    error_message = "The IP address must be IP_ADDR/MASK"
  }
}

variable "external_to_leaf1_blue_ip" {
  type    = string
  description = "IPv4 address with subnet mask for external Gateway to leaf1 in BLUE VRF, i.e. 10.1.0.1/31"
  default = "10.1.1.1/31"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.external_to_leaf1_blue_ip))==1)
    error_message = "The IP address must be IP_ADDR/MASK"
  }
}


variable "leaf2_blue_to_external_ip" {
  type    = string
  description = "IPv4 address with subnet mask for leaf2 in BLUE VRF to external gateway, i.e. 10.2.0.0/31"
  default = "10.2.1.0/31"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.leaf2_blue_to_external_ip))==1)
    error_message = "The IP address must be IP_ADDR/MASK"
  }
}

variable "external_to_leaf2_blue_ip" {
  type    = string
  description = "IPv4 address with subnet mask for external Gateway to leaf2 in BLUE VRF, i.e. 10.2.0.1/31"
  default = "10.2.1.1/31"

  validation {
    condition      = (length(regexall("^[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/[0-9]{1,2}$", var.external_to_leaf2_blue_ip))==1)
    error_message = "The IP address must be IP_ADDR/MASK"
  }
}

