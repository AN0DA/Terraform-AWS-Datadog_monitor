provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}


## AGENT
module "io_cpu_monitor" {
  source = "./modules/AGENT/io_cpu"

  monitor_enabled = var.enable_monitor_io_cpu
}

module "memory_monitor" {
  source = "./modules/AGENT/memory"

  monitor_enabled = var.enable_monitor_memory
}

module "swap_monitor" {
  source = "./modules/AGENT/swap"

  monitor_enabled = var.enable_monitor_swap
}


## EC2
module "avg_cpu_monitor" {
    source = "./modules/AWS_EC2/avg_cpu"

    monitor_enabled = var.enable_monitor_avg_cpu
}

module "avg_disk_reads" {
    source = "./modules/AWS_EC2/disk_reads"

    monitor_enabled = var.enable_monitor_disk_reads
}

module "avg_disk_writes" {
    source = "./modules/AWS_EC2/disk_writes"

    monitor_enabled = var.enable_monitor_disk_writes
}

module "avg_network_in_bytes" {
    source = "./modules/AWS_EC2/network_in_bytes"

    monitor_enabled = var.enable_monitor_network_in_bytes
}

module "avg_network_in_packets" {
    source = "./modules/AWS_EC2/network_in_packets"

    monitor_enabled = var.enable_monitor_network_in_packets
}

module "avg_network_out_bytes" {
    source = "./modules/AWS_EC2/network_out_bytes"

    monitor_enabled = var.enable_monitor_network_out_bytes
}

module "avg_network_out_packets" {
    source = "./modules/AWS_EC2/network_out_packets"

    monitor_enabled = var.enable_monitor_network_out_packets
}

module "avg_network_host_status" {
    source = "./modules/AWS_EC2/host_status"

    monitor_enabled = var.enable_monitor_host_status
}


## LAMBDA
module "duration" {
    source = "./modules/AWS_LAMBDA/duration"

    monitor_enabled = var.enable_monitor_duration
}

module "init_duration" {
    source = "./modules/AWS_LAMBDA/init_duration"

    monitor_enabled = var.enable_monitor_init_duration
}

module "invocations" {
    source = "./modules/AWS_LAMBDA/invocations"

    monitor_enabled = var.enable_monitor_invocations
}

module "invocations_error" {
    source = "./modules/AWS_LAMBDA/invocations_error"

    monitor_enabled = var.enable_monitor_invocations_error
}

module "max_memory_used" {
    source = "./modules/AWS_LAMBDA/max_memory_used"

    monitor_enabled = var.enable_monitor_max_memory_used
}

module "timeouts" {
    source = "./modules/AWS_LAMBDA/timeouts"

    monitor_enabled = var.enable_monitor_timeouts
}


## S3
module "_4xx_errors" {
    source = "./modules/AWS_S3/4xx_errors"

    monitor_enabled = var._4xx_errors
}

module "_5xx_errors" {
    source = "./modules/AWS_S3/5xx_errors"

    monitor_enabled = var._5xx_errors
}

module "all_requests" {
    source = "./modules/AWS_S3/all_requests"

    monitor_enabled = var.all_requests
}

module "bucket_size_bytes" {
    source = "./modules/AWS_S3/bucket_size_bytes"

    monitor_enabled = var.bucket_size_bytes
}

module "bytes_downloaded" {
    source = "./modules/AWS_S3/bytes_downloaded"

    monitor_enabled = var.bytes_downloaded
}

module "bytes_uploaded" {
    source = "./modules/AWS_S3/bytes_uploaded"

    monitor_enabled = var.bytes_uploaded
}

module "first_byte_latency" {
    source = "./modules/AWS_S3/first_byte_latency"

    monitor_enabled = var.first_byte_latency
}

module "get_requests" {
    source = "./modules/AWS_S3/get_requests"

    monitor_enabled = var.get_requests
}

module "number_of_objects" {
    source = "./modules/AWS_S3/number_of_objects"

    monitor_enabled = var.number_of_objects
}

module "put_requests" {
    source = "./modules/AWS_S3/put_requests"

    monitor_enabled = var.put_requests
}

module "total_request_latency" {
    source = "./modules/AWS_S3/total_request_latency"

    monitor_enabled = var.total_request_latency
}