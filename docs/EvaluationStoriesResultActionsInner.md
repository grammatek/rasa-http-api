# Rasa::HTTP::EvaluationStoriesResultActionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Name of the actual action | [optional] |
| **predicted** | **String** | Name of the predicted action | [optional] |
| **policy** | **String** | Machine-learning policy used in the prediction | [optional] |
| **confidence** | **String** | Confidence score of the prediction | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EvaluationStoriesResultActionsInner.new(
  action: utter_ask_howcanhelp,
  predicted: utter_ask_howcanhelp,
  policy: policy_0_MemoizationPolicy,
  confidence: 1.0
)
```

