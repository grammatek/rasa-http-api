# Rasa::HTTP::EntitiesAddedEventAllOfEntities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** |  | [optional] |
| **_end** | **Integer** |  | [optional] |
| **entity** | **String** |  |  |
| **confidence** | **Float** |  | [optional] |
| **extractor** | **String** |  | [optional] |
| **value** | **Object** |  |  |
| **role** | **String** |  | [optional] |
| **group** | **String** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EntitiesAddedEventAllOfEntities.new(
  start: null,
  _end: null,
  entity: null,
  confidence: null,
  extractor: null,
  value: null,
  role: null,
  group: null
)
```

