output "load_balancer_backendsets_lookup_id" {
  description = "Map of id values across all load_balancer_backendsets_lookup, keyed the same as var.load_balancer_backendsets_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_load_balancer_backendsets.load_balancer_backendsets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "load_balancer_backendsets_lookup_backendsets" {
  description = "Map of backendsets values across all load_balancer_backendsets_lookup, keyed the same as var.load_balancer_backendsets_lookup except keys with no backendsets are omitted"
  value       = { for k, v in data.oci_load_balancer_backendsets.load_balancer_backendsets_lookup : k => v.backendsets if v.backendsets != null && length(v.backendsets) > 0 }
}
output "load_balancer_backendsets_lookup_filter" {
  description = "Map of filter values across all load_balancer_backendsets_lookup, keyed the same as var.load_balancer_backendsets_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_load_balancer_backendsets.load_balancer_backendsets_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "load_balancer_backendsets_lookup_load_balancer_id" {
  description = "Map of load_balancer_id values across all load_balancer_backendsets_lookup, keyed the same as var.load_balancer_backendsets_lookup except keys with no load_balancer_id are omitted"
  value       = { for k, v in data.oci_load_balancer_backendsets.load_balancer_backendsets_lookup : k => v.load_balancer_id if v.load_balancer_id != null && length(v.load_balancer_id) > 0 }
}

