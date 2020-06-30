resource "datadog_monitor" "s3_5xx_errors" {
  count = var.monitor_enabled ? 1 : 0
  name  = "[${var.prefix}] ${var.name}"
  type  = var.alert_type

  message = <<EOF
5xx errors for last ${var.period} on host {host.name} ({host.ip})
  ${var.remediation}
  ${var.notify}
  EOF

  escalation_message = "Total request latency for last ${var.period} on host {host.name} ({host.ip}) ${var.escalation_notify}"
  query              = "avg(last_${var.period}):avg:aws.s3.5xx_errors{${join(",", compact(var.selector))}} by ${var.group_by} > ${var.critical_threshold}"

  thresholds = {
    ok       = var.ok_threshold
    warning  = var.warning_threshold
    critical = var.critical_threshold
  }

  renotify_interval = var.renotify_interval
  new_host_delay    = var.new_host_delay
  notify_no_data    = var.notify_no_data

  require_full_window = var.require_full_window
  
  evaluation_delay = var.evaluation_delay

  tags = var.datadog_monitor_tags
}