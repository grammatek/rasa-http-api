# Rasa::HTTP::SlotEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  |  |
| **timestamp** | **Integer** | Time of application | [optional] |
| **metadata** | **Object** |  | [optional] |
| **name** | **String** |  |  |
| **value** | **Object** |  |  |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::SlotEvent.new(
  event: slot,
  timestamp: null,
  metadata: {&quot;arbitrary_metadata_key&quot;:&quot;some string&quot;,&quot;more_metadata&quot;:1.0},
  name: null,
  value: null
)
```

