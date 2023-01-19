# Rasa::HTTP::EndpointConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL pointing to model | [optional] |
| **params** | **Object** | Parameters of request | [optional] |
| **headers** | **Object** | HTTP headers | [optional] |
| **basic_auth** | **Object** | Basic authentification data | [optional] |
| **token** | **String** | Token | [optional] |
| **token_name** | **String** | Name of token | [optional] |
| **wait_time_between_pulls** | **Integer** | Time to wait between pulls from model server | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EndpointConfig.new(
  url: null,
  params: null,
  headers: null,
  basic_auth: null,
  token: null,
  token_name: null,
  wait_time_between_pulls: null
)
```

