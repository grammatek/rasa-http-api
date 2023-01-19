# Rasa::HTTP::SessionStartedEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  |  |
| **timestamp** | **Integer** | Time of application | [optional] |
| **metadata** | **Object** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::SessionStartedEvent.new(
  event: session_started,
  timestamp: null,
  metadata: {&quot;arbitrary_metadata_key&quot;:&quot;some string&quot;,&quot;more_metadata&quot;:1.0}
)
```

