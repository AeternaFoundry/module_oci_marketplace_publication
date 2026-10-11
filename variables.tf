variable "marketplace_publications" {
  description = <<EOT
Map of marketplace_publications, attributes below
Required:
    - compartment_id
    - is_agreement_acknowledged
    - listing_type
    - name
    - short_description
    - package_details (block):
        - eula (required, block):
            - eula_type (required)
            - license_text (optional)
        - image_id (optional)
        - operating_system (required, block):
            - name (optional)
        - package_type (required)
        - package_version (required)
    - support_contacts (block):
        - email (optional)
        - name (optional)
        - phone (optional)
        - subject (optional)
Optional:
    - defined_tags
    - freeform_tags
    - long_description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id            = string
    is_agreement_acknowledged = bool
    listing_type              = string
    name                      = string
    short_description         = string
    defined_tags              = optional(map(string))
    freeform_tags             = optional(map(string))
    long_description          = optional(string)
    package_details = object({
      eula = list(object({
        eula_type    = string
        license_text = optional(string)
      }))
      image_id = optional(string)
      operating_system = object({
        name = optional(string)
      })
      package_type    = string
      package_version = string
    })
    support_contacts = list(object({
      email   = optional(string)
      name    = optional(string)
      phone   = optional(string)
      subject = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.marketplace_publications : (
        length(v.package_details.eula) >= 1
      )
    ])
    error_message = "Each eula list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.marketplace_publications : (
        length(v.support_contacts) >= 1
      )
    ])
    error_message = "Each support_contacts list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.marketplace_publications : (
        alltrue([for item in v.package_details.eula : (contains([for v in ["TEXT"] : lower(v)], lower(item.eula_type)))])
      )
    ])
    error_message = "must be one of: \"TEXT\""
  }
  validation {
    condition = alltrue([
      for k, v in var.marketplace_publications : (
        contains([for v in ["IMAGE"] : lower(v)], lower(v.package_details.package_type))
      )
    ])
    error_message = "must be one of: \"IMAGE\""
  }
}

