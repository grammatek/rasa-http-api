# Rasa::HTTP::LatestAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_name** | **String** | latest action name | [optional] |
| **action_text** | **String** | text of last bot utterance | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::LatestAction.new(
  action_name: null,
  action_text: null
)
```

