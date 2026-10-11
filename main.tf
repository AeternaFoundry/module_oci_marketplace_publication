resource "oci_marketplace_publication" "marketplace_publications" {
  for_each = var.marketplace_publications

  compartment_id            = each.value.compartment_id
  is_agreement_acknowledged = each.value.is_agreement_acknowledged
  listing_type              = each.value.listing_type
  name                      = each.value.name
  short_description         = each.value.short_description
  defined_tags              = each.value.defined_tags
  freeform_tags             = each.value.freeform_tags
  long_description          = each.value.long_description

  package_details {
    dynamic "eula" {
      for_each = each.value.package_details.eula
      content {
        eula_type    = eula.value.eula_type
        license_text = eula.value.license_text
      }
    }
    image_id = each.value.package_details.image_id
    operating_system {
      name = each.value.package_details.operating_system.name
    }
    package_type    = each.value.package_details.package_type
    package_version = each.value.package_details.package_version
  }

  dynamic "support_contacts" {
    for_each = each.value.support_contacts
    content {
      email   = support_contacts.value.email
      name    = support_contacts.value.name
      phone   = support_contacts.value.phone
      subject = support_contacts.value.subject
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

