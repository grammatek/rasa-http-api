# Rasa::HTTP::Intent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confidence** | **Float** | Confidence of the intent |  |
| **name** | **String** | Intent name |  |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::Intent.new(
  confidence: 0.6323,
  name: greet
)
```

