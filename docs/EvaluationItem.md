# Rasa::HTTP::EvaluationItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report** | **Object** | Sklearn classification report, see https://scikit-learn.org/stable/modules/generated/sklearn.metrics.classification_report.html | [optional] |
| **accuracy** | **Float** |  | [optional] |
| **f1_score** | **Float** |  | [optional] |
| **precision** | **Float** |  | [optional] |
| **predictions** | [**Array&lt;EvaluationItemPredictionsInner&gt;**](EvaluationItemPredictionsInner.md) | The predictions for each item in the test set | [optional] |
| **errors** | [**Array&lt;EvaluationItemErrorsInner&gt;**](EvaluationItemErrorsInner.md) | The errors which were made during the testing. | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EvaluationItem.new(
  report: {&quot;greet&quot;:{&quot;precision&quot;:0.123,&quot;recall&quot;:0.456,&quot;f1-score&quot;:0.12,&quot;support&quot;:100,&quot;confused_with&quot;:{&quot;chitchat&quot;:3,&quot;nlu_fallback&quot;:5}},&quot;micro avg&quot;:{&quot;precision&quot;:0.123,&quot;recall&quot;:0.456,&quot;f1-score&quot;:0.12,&quot;support&quot;:100},&quot;macro avg&quot;:{&quot;precision&quot;:0.123,&quot;recall&quot;:0.456,&quot;f1-score&quot;:0.12,&quot;support&quot;:100},&quot;weightedq avg&quot;:{&quot;precision&quot;:0.123,&quot;recall&quot;:0.456,&quot;f1-score&quot;:0.12,&quot;support&quot;:100}},
  accuracy: 0.19047619047619047,
  f1_score: 0.06095238095238095,
  precision: 0.036281179138321996,
  predictions: null,
  errors: null
)
```

