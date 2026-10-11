output "marketplace_publications_id" {
  description = "Map of id values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no id are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "marketplace_publications_compartment_id" {
  description = "Map of compartment_id values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no compartment_id are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "marketplace_publications_defined_tags" {
  description = "Map of defined_tags values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no defined_tags are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "marketplace_publications_freeform_tags" {
  description = "Map of freeform_tags values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "marketplace_publications_icon" {
  description = "Map of icon values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no icon are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.icon if v.icon != null && length(v.icon) > 0 }
}
output "marketplace_publications_is_agreement_acknowledged" {
  description = "Map of is_agreement_acknowledged values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no is_agreement_acknowledged are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.is_agreement_acknowledged if v.is_agreement_acknowledged != null }
}
output "marketplace_publications_listing_type" {
  description = "Map of listing_type values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no listing_type are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.listing_type if v.listing_type != null && length(v.listing_type) > 0 }
}
output "marketplace_publications_long_description" {
  description = "Map of long_description values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no long_description are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.long_description if v.long_description != null && length(v.long_description) > 0 }
}
output "marketplace_publications_name" {
  description = "Map of name values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no name are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.name if v.name != null && length(v.name) > 0 }
}
output "marketplace_publications_package_details" {
  description = "Map of package_details values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no package_details are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => one(v.package_details) if v.package_details != null && length(v.package_details) > 0 }
}
output "marketplace_publications_package_type" {
  description = "Map of package_type values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no package_type are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.package_type if v.package_type != null && length(v.package_type) > 0 }
}
output "marketplace_publications_short_description" {
  description = "Map of short_description values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no short_description are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.short_description if v.short_description != null && length(v.short_description) > 0 }
}
output "marketplace_publications_state" {
  description = "Map of state values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no state are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.state if v.state != null && length(v.state) > 0 }
}
output "marketplace_publications_support_contacts" {
  description = "Map of support_contacts values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no support_contacts are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.support_contacts if v.support_contacts != null && length(v.support_contacts) > 0 }
}
output "marketplace_publications_supported_operating_systems" {
  description = "Map of supported_operating_systems values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no supported_operating_systems are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.supported_operating_systems if v.supported_operating_systems != null && length(v.supported_operating_systems) > 0 }
}
output "marketplace_publications_system_tags" {
  description = "Map of system_tags values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no system_tags are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "marketplace_publications_time_created" {
  description = "Map of time_created values across all marketplace_publications, keyed the same as var.marketplace_publications except keys with no time_created are omitted"
  value       = { for k, v in oci_marketplace_publication.marketplace_publications : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}

