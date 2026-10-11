output "compute_packet_mirrorings_id" {
  description = "Map of id values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no id are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_packet_mirrorings_collector_ilb" {
  description = "Map of collector_ilb values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no collector_ilb are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => one(v.collector_ilb) if v.collector_ilb != null && length(v.collector_ilb) > 0 }
}
output "compute_packet_mirrorings_deletion_policy" {
  description = "Map of deletion_policy values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_packet_mirrorings_description" {
  description = "Map of description values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no description are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_packet_mirrorings_enable" {
  description = "Map of enable values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no enable are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => v.enable if v.enable != null && length(v.enable) > 0 }
}
output "compute_packet_mirrorings_filter" {
  description = "Map of filter values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no filter are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => one(v.filter) if v.filter != null && length(v.filter) > 0 }
}
output "compute_packet_mirrorings_mirrored_resources" {
  description = "Map of mirrored_resources values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no mirrored_resources are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => one(v.mirrored_resources) if v.mirrored_resources != null && length(v.mirrored_resources) > 0 }
}
output "compute_packet_mirrorings_name" {
  description = "Map of name values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no name are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_packet_mirrorings_network" {
  description = "Map of network values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no network are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => one(v.network) if v.network != null && length(v.network) > 0 }
}
output "compute_packet_mirrorings_priority" {
  description = "Map of priority values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no priority are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => v.priority if v.priority != null }
}
output "compute_packet_mirrorings_project" {
  description = "Map of project values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no project are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_packet_mirrorings_region" {
  description = "Map of region values across all compute_packet_mirrorings, keyed the same as var.compute_packet_mirrorings except keys with no region are omitted"
  value       = { for k, v in google_compute_packet_mirroring.compute_packet_mirrorings : k => v.region if v.region != null && length(v.region) > 0 }
}

