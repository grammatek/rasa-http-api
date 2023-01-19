# Rasa::HTTP::UserEventAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | **String** |  | [optional] |
| **text** | **String** | Text of user message. | [optional] |
| **input_channel** | **String** |  | [optional] |
| **message_id** | **String** |  | [optional] |
| **parse_data** | [**ParseResult**](ParseResult.md) |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::UserEventAllOf.new(
  event: user,
  text: null,
  input_channel: null,
  message_id: null,
  parse_data: null
)
```

