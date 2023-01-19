# Rasa::HTTP::PredictResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scores** | [**Array&lt;PredictResultScoresInner&gt;**](PredictResultScoresInner.md) | Prediction results | [optional] |
| **policy** | **String** | Policy which predicted the most likely action | [optional] |
| **tracker** | [**Tracker**](Tracker.md) |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::PredictResult.new(
  scores: null,
  policy: policy_2_TEDPolicy,
  tracker: null
)
```

