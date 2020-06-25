# -----
## GLOBAL SETTINGS

variable "prefix" {
  type        = string
  description = "Monitor prefix, displayed in '[ ]'"
  default     = "AWS EC2"
}

variable "name" {
  type        = string
  description = "Monitor name"
  default     = "network in (packets)"
}


variable "monitor_enabled" {
  type        = bool
  description = "State of the monitor"
  default     = true
}

variable "datadog_monitor_tags" {
  description = "Configurable labels that can be applied to monitor"
  type        = list
  default     = ["CloudWatch", "EC2", "network", "in"]
}


# -----
## MONITOR SETTINGS

variable "alert_type" {
  type        = string
  description = "Type of the monitor (e.g. `metric alert`, `service check`, `event alert`, `query alert`)"
  default     = "metric alert"
}

variable "period" {
  type        = string
  description = "Monitoring period in minutes"
  default     = "10m"
}

variable "notify_no_data" {
  type        = string
  description = "A flag indicating whether this monitor will notify when data stops reporting"
  default     = false
}

variable "new_host_delay" {
  type        = string
  description = "Time (in seconds) to allow a host to boot and applications to fully start before starting the evaluation of monitor results"
  default     = "300"
}

variable "renotify_interval" {
  type        = string
  description = "The number of minutes after the last notification before a monitor will re-notify on the current status. It will only re-notify if it's not resolved"
  default     = "60"
}

variable "ok_threshold" {
  type        = string
  description = "Percent of CPU usage for OK threshold"
  default     = "20"
}

variable "warning_threshold" {
  type        = string
  description = "Percent of CPU usage for warning threshold"
  default     = "50"
}

variable "critical_threshold" {
  type        = string
  description = "Percent of CPU usage for critical threshold"
  default     = "80"
}

variable "evaluation_delay" {
  type        = string
  description = "Time (in seconds) to delay evaluation, as a non-negative integer. Ex. if the value is set to 300, the timeframe is set to last_5m and the time is 7:00, the monitor will evaluate data from 6:50 to 6:55."
  default     = "900"
}

variable "selector" {
  description = "Selector for enabling monitor for specific hosts, host tags"
  type        = list
  default     = ["*"]
}

variable "notify" {
  type        = string
  description = "Notification email, hipchat or slack user/channel"
  default     = ""
}

variable "escalation_notify" {
  type        = string
  description = "Escalation notification email, hipchat or slack user/channel"
  default     = ""
}

variable "group_by" {
  type        = string
  description = "Monitor query group by selector"
  default     = "{host}"
}

variable "remediation" {
  type        = string
  description = "URL to internal documentation for instructions as to how to remediate"
  default     = ""
}
