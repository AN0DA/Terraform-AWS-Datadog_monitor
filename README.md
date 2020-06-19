# Terraform-AWS-Datadog_monitor

## About

Terraform script creating Datadog monitors for AWS integration.

## Current state

- AWS
    - [x] Config provider
    - [x] Avg CPU monitor
    - [ ] Status Check Fail monitor
    - [ ] Disk reads (bytes) monitor
    - [ ] Disk writes (bytes) monitor
    - [ ] Network in (bytes) monitor
    - [ ] Network out (bytes) monitor
- Datadog Agent [**CAUTION: require Datadog agent**]
    - [x] Memory monitor [TODO: Set default thresholds] 
    - [x] CPU I/O monitor
    - [ ] Swap monitor
    - [ ] Avg load monitor



## Auto variable filling

Create `*.auto.tfvars` file with pattern:
> Default values can be seen in [var.tf](var.tf)

```hcl
datadog_api_key = ""
datadog_app_key = ""

# OPTIONAL

enable_monitor_avg_cpu = [TRUE/false]
enable_monitor_io_cpu = [TRUE/false]
enable_monitor_memory = [TRUE/false]


```
