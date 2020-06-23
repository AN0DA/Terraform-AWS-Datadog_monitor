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

### AGENT
variable "enable_monitor_io_cpu" {
  type        = bool
  description = "Enable CPU I/O wait monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_memory" {
  type        = bool
  description = "Enable memory monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_swap" {
  type        = bool
  description = "Enable swap monitor (TRUE/false)"
  default = true
}


### CLOUDWATCH
variable "enable_monitor_avg_cpu" {
  type        = bool
  description = "Enable avg CPU monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_disk_reads" {
  type        = bool
  description = "Enable disk reads monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_disk_writes" {
  type        = bool
  description = "Enable disk writes monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_network_in_bytes" {
  type        = bool
  description = "Enable network in (bytes) monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_network_in_packets" {
  type        = bool
  description = "Enable network in (packets) monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_network_out_bytes" {
  type        = bool
  description = "Enable network out (bytes) monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_network_out_packets" {
  type        = bool
  description = "Enable network out (packets) monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_host_status" {
  type        = bool
  description = "Enable host status monitor (TRUE/false)"
  default = true
}