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


### EC2
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


### LAMBDA
variable "enable_monitor_duration" {
  type        = bool
  description = "Enable Lambda avg duration monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_init_duration" {
  type        = bool
  description = "Enable Lambda avg init duration monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_invocations" {
  type        = bool
  description = "Enable invocations monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_invocations_error" {
  type        = bool
  description = "Enable invocations error monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_max_memory_used" {
  type        = bool
  description = "Enable max memory used monitor (TRUE/false)"
  default = true
}

variable "enable_monitor_timeouts" {
  type        = bool
  description = "Enable timeouts monitor (TRUE/false)"
  default = true
}

### S3
variable "_4xx_errors" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "_5xx_errors" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "all_requests" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "bucket_size_bytes" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "bytes_downloaded" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "bytes_uploaded" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "first_byte_latency" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "get_requests" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "number_of_objects" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "put_requests" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}

variable "total_request_latency" {
  type        = bool
  description = "Enable total request latency monitor (TRUE/false)"
  default = true
}
