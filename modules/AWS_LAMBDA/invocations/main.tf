resource "datadog_monitor" "lambda_invocations" {
  count = var.monitor_enabled ? 1 : 0
  name  = "[${var.prefix}] ${var.name}"
  type  = var.alert_type

  message = <<EOF
  Lambda invocations for last ${var.period} on fuction {functionname.name}
  ${var.remediation}
  ${var.notify}
  EOF

  escalation_message = "Lambda invocations for last ${var.period} on fuction {functionname.name} ${var.escalation_notify}"
  query              = "sum(last_${var.period}):avg:aws.lambda.invocations{${join(",", compact(var.selector))}} by ${var.group_by}> ${var.critical_threshold}"

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