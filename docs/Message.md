# Rasa::HTTP::Message

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Message text |  |
| **sender** | **String** | Origin of the message - who sent it |  |
| **parse_data** | [**ParseResult**](ParseResult.md) |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::Message.new(
  text: Hello!,
  sender: user,
  parse_data: null
)
```

