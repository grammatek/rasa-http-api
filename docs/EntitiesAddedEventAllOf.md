# Rasa::HTTP::EntitiesAddedEventAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **entities** | [**Array&lt;EntitiesAddedEventAllOfEntities&gt;**](EntitiesAddedEventAllOfEntities.md) |  |  |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EntitiesAddedEventAllOf.new(
  event: entities,
  entities: null
)
```

