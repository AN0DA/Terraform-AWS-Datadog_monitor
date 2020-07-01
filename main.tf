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


## DynamoDB

module "account_provisioned_read_capacity_utilization" {
    source = "./modules/AWS_DYNAMODB/account_provisioned_read_capacity_utilization"

    monitor_enabled = var.account_provisioned_read_capacity_utilization
}

module "account_provisioned_write_capacity_utilization" {
    source = "./modules/AWS_DYNAMODB/account_provisioned_write_capacity_utilization"

    monitor_enabled = var.account_provisioned_write_capacity_utilization
}

module "consumed_read_capacity_units" {
    source = "./modules/AWS_DYNAMODB/consumed_read_capacity_units"

    monitor_enabled = var.consumed_read_capacity_units
}

module "consumed_write_capacity_units" {
    source = "./modules/AWS_DYNAMODB/consumed_write_capacity_units"

    monitor_enabled = var.consumed_write_capacity_units
}

module "item_count" {
    source = "./modules/AWS_DYNAMODB/item_count"

    monitor_enabled = var.item_count
}

module "read_throttle_events" {
    source = "./modules/AWS_DYNAMODB/read_throttle_events"

    monitor_enabled = var.read_throttle_events
}

module "replication_latency" {
    source = "./modules/AWS_DYNAMODB/replication_latency"

    monitor_enabled = var.replication_latency
}

module "returned_item_count" {
    source = "./modules/AWS_DYNAMODB/returned_item_count"

    monitor_enabled = var.returned_item_count
}

module "returned_records_count" {
    source = "./modules/AWS_DYNAMODB/returned_records_count"

    monitor_enabled = var.returned_records_count
}

module "successful_request_latency" {
    source = "./modules/AWS_DYNAMODB/successful_request_latency"

    monitor_enabled = var.successful_request_latency
}

module "system_errors" {
    source = "./modules/AWS_DYNAMODB/system_errors"

    monitor_enabled = var.system_errors
}

module "table_size" {
    source = "./modules/AWS_DYNAMODB/table_size"

    monitor_enabled = var.table_size
}

module "throttled_requests" {
    source = "./modules/AWS_DYNAMODB/throttled_requests"

    monitor_enabled = var.throttled_requests
}

module "transaction_conflict" {
    source = "./modules/AWS_DYNAMODB/transaction_conflict"

    monitor_enabled = var.transaction_conflict
}

module "user_errors" {
    source = "./modules/AWS_DYNAMODB/user_errors"

    monitor_enabled = var.user_errors
}

module "write_throttle_events" {
    source = "./modules/AWS_DYNAMODB/write_throttle_events"

    monitor_enabled = var.write_throttle_events
}


## AWS RDS

module "bin_log_disk_usage" {
    source = "./modules/AWS_RDS/bin_log_disk_usage"

    monitor_enabled = var.bin_log_disk_usage
}

module "burst_balance" {
    source = "./modules/AWS_RDS/burst_balance"

    monitor_enabled = var.burst_balance
}

module "cpuutilization" {
    source = "./modules/AWS_RDS/cpuutilization"

    monitor_enabled = var.cpuutilization
}

module "database_connections" {
    source = "./modules/AWS_RDS/database_connections"

    monitor_enabled = var.database_connections
}

module "dbload" {
    source = "./modules/AWS_RDS/dbload"

    monitor_enabled = var.dbload
}

module "dbload_cpu" {
    source = "./modules/AWS_RDS/dbload_cpu"

    monitor_enabled = var.dbload_cpu
}

module "disk_queue_depth" {
    source = "./modules/AWS_RDS/disk_queue_depth"

    monitor_enabled = var.disk_queue_depth
}

module "failed_sqlserver_agent_jobs_count" {
    source = "./modules/AWS_RDS/failed_sqlserver_agent_jobs_count"

    monitor_enabled = var.failed_sqlserver_agent_jobs_count
}

module "free_storage_space" {
    source = "./modules/AWS_RDS/free_storage_space"

    monitor_enabled = var.free_storage_space
}

module "freeable_memory" {
    source = "./modules/AWS_RDS/freeable_memory"

    monitor_enabled = var.freeable_memory
}

module "network_receive_throughput" {
    source = "./modules/AWS_RDS/network_receive_throughput"

    monitor_enabled = var.network_receive_throughput
}

module "network_transmit_throughput" {
    source = "./modules/AWS_RDS/network_transmit_throughput"

    monitor_enabled = var.network_transmit_throughput
}

module "read_iops" {
    source = "./modules/AWS_RDS/read_iops"

    monitor_enabled = var.read_iops
}

module "read_latency" {
    source = "./modules/AWS_RDS/read_latency"

    monitor_enabled = var.read_latency
}

module "swap_usage" {
    source = "./modules/AWS_RDS/swap_usage"

    monitor_enabled = var.swap_usage
}

module "total_storage_space" {
    source = "./modules/AWS_RDS/total_storage_space"

    monitor_enabled = var.total_storage_space
}

module "write_iops" {
    source = "./modules/AWS_RDS/write_iops"

    monitor_enabled = var.write_iops
}

module "write_latency" {
    source = "./modules/AWS_RDS/write_latency"

    monitor_enabled = var.write_latency
}
