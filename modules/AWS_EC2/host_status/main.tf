resource "datadog_monitor" "host_status" {
  count = var.monitor_enabled ? 1 : 0
  name  = "[${var.prefix}] ${var.name}"
  type  = var.alert_type

  message = <<EOF
  Host status for last ${var.period} on host {host.name} ({host.ip})
  ${var.remediation}
  ${var.notify}
  EOF

  escalation_message = "Host status for last ${var.period} on host {host.name} ({host.ip}) ${var.escalation_notify}"
  query              = "max(last_${var.period}):max:aws.ec2.host_ok{${join(",", compact(var.selector))}} by ${var.group_by} == ${var.critical_threshold}"

  renotify_interval = var.renotify_interval
  new_host_delay    = var.new_host_delay
  notify_no_data    = var.notify_no_data

  tags = var.datadog_monitor_tags
}