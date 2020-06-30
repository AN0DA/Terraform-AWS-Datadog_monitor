# Terraform-AWS-Datadog_monitor

## About

Terraform script creating Datadog monitors for AWS integration.

**IMPORTANT: AWS data is evaluated in 15 minutes offset due to CloudWatch API limitations**

## Current state

> ***Legend:***
> [ ] - Not implemented
> [?] - Implemented, not tested
> [x] - Implemented, working
- [ ] **TODO: Set default thresholds**
- AWS
  - AWS EC2
      - [x] Config provider
      - [x] Avg CPU monitor
      - [x] Host status monitor
      - [x] Disk reads (bytes) monitor
      - [x] Disk writes (bytes) monitor
      - [x] Network in (bytes) monitor
      - [x] Network out (bytes) monitor
      - [x] Network in (packets) monitor
      - [x] Network out (packets) monitor
      - Datadog Agent [**CAUTION: require Datadog agent installed**]
        - [x] Memory monitor
        - [x] CPU I/O monitor
        - [x] Swap monitor
  - AWS Lambda
      - [x] Duration monitor
      - [?] Init duration monitor
      - [x] Invocations monitor
      - [x] Invocation errors monitor
      - [?] Max memory used monitor
      - [?] Timeouts monitor
  - AWS S3 (Require [enabling Request metrics](https://docs.aws.amazon.com/AmazonS3/latest/user-guide/configure-metrics.html))
      - [x] 4xx error monitor
      - [x] 5xx error monitor
      - [x] Bucket size in bytes monitor
      - [x] Number of objects monitor
      - [x] Total request latency monitor
      - [x] First byte latency monitor
      - [x] Bytes downloaded monitor
      - [x] Bytes uploaded monitor
      - [x] All requests monitor
      - [x] GET requests monitor
      - [x] PUT requests monitor
  - AWS DynamoDB
      - [?] account_provisioned_read_capacity_utilization
      - [?] account_provisioned_write_capacity_utilization
      - [?] consumed_read_capacity_units
      - [?] consumed_write_capacity_units
      - [?] item_count
      - [?] read_throttle_events
      - [?] replication_latency
      - [?] returned_item_count
      - [?] returned_records_count
      - [?] successful_request_latency
      - [?] system_errors
      - [?] table_size
      - [?] throttled_requests
      - [?] transaction_conflict
      - [?] user_errors
      - [?] write_throttle_events
  - AWS RDS




## Auto variable filling

Create `*.auto.tfvars` file with pattern:
> Default values can be seen in [var.tf](var.tf)

```hcl
datadog_api_key = ""
datadog_app_key = ""


# OPTIONAL

enable_monitor_avg_cpu =  # TRUE/false
enable_monitor_io_cpu =   # TRUE/false
enable_monitor_memory =   # TRUE/false
# (...)


```

## Monitor settings

Parameters can be edited in `variables.tf` in each of the module or by passing argument in module call in root `main.tf`.

```tf
# -----
## GLOBAL SETTINGS

variable "prefix" {
  type        = string
  description = "Monitor prefix, displayed in '[ ]'"
  default     = ""
}

variable "name" {
  type        = string
  description = "Monitor name"
  default     = ""
}


variable "monitor_enabled" {
  type        = bool
  description = "State of the monitor"
  default     = true
}

variable "datadog_monitor_tags" {
  description = "Configurable labels that can be applied to monitor"
  type        = list
  default     = [""]
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
```
