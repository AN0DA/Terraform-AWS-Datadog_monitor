resource "datadog_monitor" "dynamo_successful_request_latency" {
  count = var.monitor_enabled ? 1 : 0
  name  = "[${var.prefix}] ${var.name}"
  type  = var.alert_type

  message = <<EOF
  Successful request latency for last ${var.period} on table {bucketname.name}
  ${var.remediation}
  ${var.notify}
  EOF

  escalation_message = "Successful request latency for last ${var.period} on table {bucketname.name} ${var.escalation_notify}"
  query              = "avg(last_${var.period}):avg:aws.dynamodb.successful_request_latency{${join(",", compact(var.selector))}} by ${var.group_by} > ${var.critical_threshold}"

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