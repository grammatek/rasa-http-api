# Rasa::HTTP::NLUEvaluationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **intent_evaluation** | [**EvaluationItem**](EvaluationItem.md) |  | [optional] |
| **response_selection_evaluation** | [**EvaluationItem**](EvaluationItem.md) |  | [optional] |
| **entity_evaluation** | [**Hash&lt;String, EvaluationItem&gt;**](EvaluationItem.md) | Rasa NLU entity evaluation. | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::NLUEvaluationResult.new(
  intent_evaluation: null,
  response_selection_evaluation: null,
  entity_evaluation: null
)
```

