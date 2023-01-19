# Rasa::HTTP::ActionEventAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **policy** | **String** |  | [optional] |
| **confidence** | **Float** |  | [optional] |
| **name** | **String** |  | [optional] |
| **hide_rule_turn** | **Boolean** |  | [optional] |
| **action_text** | **String** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::ActionEventAllOf.new(
  event: action,
  policy: null,
  confidence: null,
  name: null,
  hide_rule_turn: null,
  action_text: null
)
```

