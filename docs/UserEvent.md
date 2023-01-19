# Rasa::HTTP::UserEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  |  |
| **timestamp** | **Integer** | Time of application | [optional] |
| **metadata** | **Object** |  | [optional] |
| **text** | **String** | Text of user message. | [optional] |
| **input_channel** | **String** |  | [optional] |
| **message_id** | **String** |  | [optional] |
| **parse_data** | [**ParseResult**](ParseResult.md) |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::UserEvent.new(
  event: user,
  timestamp: null,
  metadata: {&quot;arbitrary_metadata_key&quot;:&quot;some string&quot;,&quot;more_metadata&quot;:1.0},
  text: null,
  input_channel: null,
  message_id: null,
  parse_data: null
)
```

