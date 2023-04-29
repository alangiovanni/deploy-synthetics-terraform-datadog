# Example Usage (Synthetics API test)
# Create a new Datadog Synthetics API/HTTP test on https://www.example.org
resource "datadog_synthetics_test" "test_api" {
  type    = "api"
  subtype = "http"
  request_definition {
    method = "GET"
    timeout = 10
    url    = "https://api.hgbrasil.com/weather?woeid=455872"
  }
  request_headers = {

  }

  assertion {
    type     = "statusCode"
    operator = "is"
    target   = "200"
  }

  assertion {
    type     = "responseTime"
    operator = "lessThan"
    target   = "1000"
  }

  assertion {
    type     = "body"
    operator = "validatesJSONPath"
    targetjsonpath {
      jsonpath = "$.results.city_name"
      operator = "is"
      targetvalue = "João Pessoa"
    }
  }

  locations = ["aws:us-west-1"]
  options_list {
    tick_every = 300
    min_location_failed = 1
    min_failure_duration = 600 #Segundos, tempo de alerta para enviar uma notificação

    retry {
      count    = 2
      interval = 5000
    }

    monitor_options {
      renotify_interval = 20
    }
  }
  name    = "Terraform - API Test HG Weather"
  message = "{{#is_alert}}\nAPI de Clima da HG Weather está indisponível.\n{{/is_alert}}\n\n{{#is_recovery}}\nAPI de Clima da HG Weather está disponível novamente!\n{{/is_recovery}}"
  tags    = ["foo:bar", "env:test", "terraform"]

  status = "live"
}