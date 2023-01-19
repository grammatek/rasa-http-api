# Rasa::HTTP::EvaluationStoriesResultReportValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **intent_name** | **String** |  | [optional] |
| **classification_report** | **Object** | Sklearn classification report, see https://scikit-learn.org/stable/modules/generated/sklearn.metrics.classification_report.html | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EvaluationStoriesResultReportValue.new(
  intent_name: null,
  classification_report: {&quot;greet&quot;:{&quot;precision&quot;:0.123,&quot;recall&quot;:0.456,&quot;f1-score&quot;:0.12,&quot;support&quot;:100,&quot;confused_with&quot;:{&quot;chitchat&quot;:3,&quot;nlu_fallback&quot;:5}},&quot;micro avg&quot;:{&quot;precision&quot;:0.123,&quot;recall&quot;:0.456,&quot;f1-score&quot;:0.12,&quot;support&quot;:100},&quot;macro avg&quot;:{&quot;precision&quot;:0.123,&quot;recall&quot;:0.456,&quot;f1-score&quot;:0.12,&quot;support&quot;:100},&quot;weightedq avg&quot;:{&quot;precision&quot;:0.123,&quot;recall&quot;:0.456,&quot;f1-score&quot;:0.12,&quot;support&quot;:100}}
)
```

