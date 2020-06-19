# -----
## PROVIDER SETTINGS

variable "datadog_api_key" {
  type        = string
  description = "Datadog API key. This can also be set via the DATADOG_API_KEY environment variable"
}

variable "datadog_app_key" {
  type        = string
  description = "Datadog APP key. This can also be set via the DATADOG_APP_KEY environment variable"
}


# -----
## ENABLE MONITORS

variable "enable_monitor_cpu" {
  type        = bool
  description = "Enable CPU monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_memory" {
  type        = bool
  description = "Enable memory monitor (TRUE/false)"
  default = true
}