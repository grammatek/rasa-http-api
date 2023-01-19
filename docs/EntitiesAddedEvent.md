# Rasa::HTTP::EntitiesAddedEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  |  |
| **timestamp** | **Integer** | Time of application | [optional] |
| **metadata** | **Object** |  | [optional] |
| **entities** | [**Array&lt;EntitiesAddedEventAllOfEntities&gt;**](EntitiesAddedEventAllOfEntities.md) |  |  |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::EntitiesAddedEvent.new(
  event: entities,
  timestamp: null,
  metadata: {&quot;arbitrary_metadata_key&quot;:&quot;some string&quot;,&quot;more_metadata&quot;:1.0},
  entities: null
)
```

