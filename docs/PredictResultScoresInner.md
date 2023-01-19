# Rasa::HTTP::PredictResultScoresInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Action name | [optional] |
| **score** | **Float** | Assigned score | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::PredictResultScoresInner.new(
  action: utter_greet,
  score: 1.0
)
```

