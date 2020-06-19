provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}

module "avg_cpu_monitor" {
    source = "./modules/AWS/avg_cpu"

    monitor_enabled = var.enable_monitor_avg_cpu
}

module "memory_monitor" {
  source = "./modules/AGENT/memory"

  monitor_enabled = var.enable_monitor_memory
}

module "io_cpu_monitor" {
  source = "./modules/AGENT/io_cpu"

  monitor_enabled = var.enable_monitor_io_cpu
}
