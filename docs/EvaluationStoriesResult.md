# Rasa::HTTP::EvaluationStoriesResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actions** | [**Array&lt;EvaluationStoriesResultActionsInner&gt;**](EvaluationStoriesResultActionsInner.md) | Accuracy of the classification, https://scikit-learn.org/stable/modules/generated/sklearn.metrics.accuracy_score.html | [optional] |
| **is_end_to_end_evaluation** | **Boolean** | True if evaluation is end-to-end, false otherwise | [optional] |
| **precision** | **Float** | Precision of the classification, see https://scikit-learn.org/stable/modules/generated/sklearn.metrics.precision_score.html | [optional] |
| **f1** | **Float** | F1 score of the classification, https://scikit-learn.org/stable/modules/generated/sklearn.metrics.precision_score.html | [optional] |
| **accuracy** | **Float** | Accuracy of the classification, https://scikit-learn.org/stable/modules/generated/sklearn.metrics.accuracy_score.html | [optional] |
| **in_training_data_fraction** | **Float** | Fraction of stories that are present in the training data of the model loaded at evaluation time. | [optional] |
| **report** | [**EvaluationStoriesResultReport**](EvaluationStoriesResultReport.md) |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EvaluationStoriesResult.new(
  actions: null,
  is_end_to_end_evaluation: true,
  precision: 1.0,
  f1: 0.9333333333333333,
  accuracy: 0.9,
  in_training_data_fraction: 0.8571428571428571,
  report: null
)
```

