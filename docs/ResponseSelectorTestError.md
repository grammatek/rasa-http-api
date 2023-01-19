# Rasa::HTTP::ResponseSelectorTestError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Test message | [optional] |
| **intent_response_key_target** | **String** | Expected retrieval intent | [optional] |
| **intent_response_key_prediction** | [**Intent**](Intent.md) |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::ResponseSelectorTestError.new(
  text: are you alright?,
  intent_response_key_target: null,
  intent_response_key_prediction: null
)
```

