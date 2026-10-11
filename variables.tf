variable "compute_packet_mirrorings" {
  description = <<EOT
Map of compute_packet_mirrorings, attributes below
Required:
    - name
    - collector_ilb (block):
        - url (required)
    - mirrored_resources (block):
        - instances (optional, block):
            - url (required)
        - subnetworks (optional, block):
            - url (required)
        - tags (optional)
    - network (block):
        - url (required)
Optional:
    - deletion_policy
    - description
    - enable
    - priority
    - project
    - region
    - filter (block):
        - cidr_ranges (optional)
        - direction (optional)
        - ip_protocols (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name            = string
    deletion_policy = optional(string)
    description     = optional(string)
    enable          = optional(string)
    priority        = optional(number)
    project         = optional(string)
    region          = optional(string)
    collector_ilb = object({
      url = string
    })
    mirrored_resources = object({
      instances = optional(list(object({
        url = string
      })))
      subnetworks = optional(list(object({
        url = string
      })))
      tags = optional(list(string))
    })
    network = object({
      url = string
    })
    filter = optional(object({
      cidr_ranges  = optional(list(string))
      direction    = optional(string)
      ip_protocols = optional(list(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

