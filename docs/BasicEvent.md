# Rasa::HTTP::BasicEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** | Event name |  |
| **timestamp** | **Integer** | Time of application | [optional] |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::BasicEvent.new(
  event: slot,
  timestamp: null,
  metadata: {&quot;arbitrary_metadata_key&quot;:&quot;some string&quot;,&quot;more_metadata&quot;:1.0}
)
```

