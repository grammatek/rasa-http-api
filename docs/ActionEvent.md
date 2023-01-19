# Rasa::HTTP::ActionEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  |  |
| **timestamp** | **Integer** | Time of application | [optional] |
| **metadata** | **Object** |  | [optional] |
| **policy** | **String** |  | [optional] |
| **confidence** | **Float** |  | [optional] |
| **name** | **String** |  | [optional] |
| **hide_rule_turn** | **Boolean** |  | [optional] |
| **action_text** | **String** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::ActionEvent.new(
  event: action,
  timestamp: null,
  metadata: {&quot;arbitrary_metadata_key&quot;:&quot;some string&quot;,&quot;more_metadata&quot;:1.0},
  policy: null,
  confidence: null,
  name: null,
  hide_rule_turn: null,
  action_text: null
)
```

