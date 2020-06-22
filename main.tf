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


## CLOUDWATCH
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