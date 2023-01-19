# Rasa::HTTP::IntentTriggerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the intent to be executed. |  |
| **entities** | **Object** | Entities to be passed on. | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::IntentTriggerRequest.new(
  name: greet,
  entities: {&quot;temperature&quot;:&quot;high&quot;}
)
```

