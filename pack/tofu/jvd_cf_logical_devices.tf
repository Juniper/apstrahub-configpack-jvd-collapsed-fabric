resource "apstra_logical_device" "DC-CF-Leaf" {
  name = "DC-CF-Leaf"
  panels = [
    {
      rows = 2
      columns = 24
      port_groups = [
        {
          port_count = 48
          port_speed = "10G"
          port_roles = ["generic", "peer", "access"]
        }
      ]
    },
    {
      rows = 2
      columns = 3
      port_groups = [
        {
          port_count = 6
          port_speed = "100G"
          port_roles = ["generic", "leaf"]
        }
      ]
    }
  ]
}
