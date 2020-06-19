provider "datadog" {
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}

module "cpu_monitor" {
    source = "./modules/cpu"

    monitor_enabled = var.enable_monitor_cpu
}

module "memory_monitor" {
  source = "./modules/memory"

  monitor_enabled = var.enable_monitor_memory
}

