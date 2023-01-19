# Rasa::HTTP::IntentTestError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Test message | [optional] |
| **intent_response_key_target** | **String** | Expected intent | [optional] |
| **intent_response_key_prediction** | [**Intent**](Intent.md) |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::IntentTestError.new(
  text: are you alright?,
  intent_response_key_target: null,
  intent_response_key_prediction: null
)
```

