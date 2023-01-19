# Rasa::HTTP::ConversationAccuracyReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accuracy** | **Float** |  | [optional] |
| **correct** | **Float** |  | [optional] |
| **with_warnings** | **Float** |  | [optional] |
| **total** | **Float** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::ConversationAccuracyReport.new(
  accuracy: 0.19047619047619047,
  correct: 18,
  with_warnings: 1,
  total: 20
)
```

