# Rasa::HTTP::Error

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | Rasa version | [optional] |
| **status** | **String** | Status of the requested action | [optional] |
| **message** | **String** | Error message | [optional] |
| **reason** | **String** | Error category | [optional] |
| **details** | **Object** | Additional error information | [optional] |
| **help** | **String** | Optional URL to additonal material | [optional] |
| **code** | **Float** | HTTP status code | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::Error.new(
  version: null,
  status: null,
  message: null,
  reason: null,
  details: null,
  help: null,
  code: null
)
```

