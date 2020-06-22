resource "datadog_monitor" "cpu_usage" {
  count = var.monitor_enabled ? 1 : 0
  name  = "[${var.prefix}] ${var.name}"
  type  = var.alert_type

  message = <<EOF
  CPU usage for last ${var.period} on host {host.name} ({host.ip})
  ${var.remediation}
  ${var.notify}
  EOF

  escalation_message = "CPU usage for last ${var.period} on host {host.name} ({host.ip}) ${var.escalation_notify}"
  query              = "avg(last_${var.period}):avg:aws.ec2.cpuutilization{${join(",", compact(var.selector))}} by ${var.group_by} > ${var.critical_threshold}"

  thresholds = {
    ok       = var.ok_threshold
    warning  = var.warning_threshold
    critical = var.critical_threshold
  }

  renotify_interval = var.renotify_interval
  new_host_delay    = var.new_host_delay
  notify_no_data    = var.notify_no_data

  tags = var.datadog_monitor_tags
}