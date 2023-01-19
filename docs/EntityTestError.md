# Rasa::HTTP::EntityTestError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Test message | [optional] |
| **entities** | [**Array&lt;Entity&gt;**](Entity.md) | Expected entities | [optional] |
| **predicted_entities** | [**Array&lt;Entity&gt;**](Entity.md) | Predicted entities | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EntityTestError.new(
  text: what is the weather in zurich?,
  entities: null,
  predicted_entities: null
)
```

