resource "datadog_monitor" "dynamo_account_provisioned_write_capacity_utilization" {
  count = var.monitor_enabled ? 1 : 0
  name  = "[${var.prefix}] ${var.name}"
  type  = var.alert_type

  message = <<EOF
  Account provisioned write capacity utilization for last ${var.period} on fuction {bucketname.name}
  ${var.remediation}
  ${var.notify}
  EOF

  escalation_message = "Account provisioned write capacity utilization for last ${var.period} on fuction {bucketname.name} ${var.escalation_notify}"
  query              = "avg(last_${var.period}):avg:aws.dynamodb.account_provisioned_write_capacity_utilization{${join(",", compact(var.selector))}} by ${var.group_by} > ${var.critical_threshold}"

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