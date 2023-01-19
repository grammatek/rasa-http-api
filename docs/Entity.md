# Rasa::HTTP::Entity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Char offset of the start |  |
| **_end** | **Integer** | Char offset of the end |  |
| **value** | **String** | Found value for entity |  |
| **entity** | **String** | Type of the entity |  |
| **confidence** | **Float** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::Entity.new(
  start: null,
  _end: null,
  value: null,
  entity: null,
  confidence: null
)
```

