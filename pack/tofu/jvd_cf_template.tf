# create template with three racks - single, ESI and border

resource "apstra_template_collapsed" "cf_template" {
  name                     = "cf_template"
  rack_type_id    = apstra_rack_type.DC-CF-Rack.id
  mesh_link_speed = "100G"
  mesh_link_count = 2
}
