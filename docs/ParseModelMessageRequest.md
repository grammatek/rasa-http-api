# Rasa::HTTP::ParseModelMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Message to be parsed | [optional] |
| **message_id** | **String** | Optional ID for message to be parsed | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::ParseModelMessageRequest.new(
  text: Hello, I am Rasa!,
  message_id: b2831e73-1407-4ba0-a861-0f30a42a2a5a
)
```

