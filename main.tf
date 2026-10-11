resource "google_compute_packet_mirroring" "compute_packet_mirrorings" {
  for_each = var.compute_packet_mirrorings

  name            = each.value.name
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  enable          = each.value.enable
  priority        = each.value.priority
  project         = each.value.project
  region          = each.value.region

  collector_ilb {
    url = each.value.collector_ilb.url
  }

  mirrored_resources {
    dynamic "instances" {
      for_each = each.value.mirrored_resources.instances != null ? each.value.mirrored_resources.instances : []
      content {
        url = instances.value.url
      }
    }
    dynamic "subnetworks" {
      for_each = each.value.mirrored_resources.subnetworks != null ? each.value.mirrored_resources.subnetworks : []
      content {
        url = subnetworks.value.url
      }
    }
    tags = each.value.mirrored_resources.tags
  }

  network {
    url = each.value.network.url
  }

  dynamic "filter" {
    for_each = each.value.filter != null ? [each.value.filter] : []
    content {
      cidr_ranges  = filter.value.cidr_ranges
      direction    = filter.value.direction
      ip_protocols = filter.value.ip_protocols
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

