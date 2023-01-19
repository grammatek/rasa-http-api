# Rasa::HTTP::EvaluationItemPredictionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **intent** | **String** |  | [optional] |
| **predicted** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **confidence** | **Float** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EvaluationItemPredictionsInner.new(
  intent: greet,
  predicted: greet,
  text: hey,
  confidence: 0.9973567
)
```

