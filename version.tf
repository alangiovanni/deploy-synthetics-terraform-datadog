terraform {
  required_version = "~> 1.3.7"

  required_providers {
    datadog = {
      source  = "DataDog/datadog"
      version = "~> 3.24"
    }
  }
}
