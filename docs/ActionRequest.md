# Rasa::HTTP::ActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the action to be executed. |  |
| **policy** | **String** | Name of the policy that predicted the action. | [optional] |
| **confidence** | **Float** | Confidence of the prediction. | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::ActionRequest.new(
  name: utter_greet,
  policy: null,
  confidence: 0.987232
)
```

