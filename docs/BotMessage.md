# Rasa::HTTP::BotMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recipient_id** | **String** | Id of the message receiver | [optional] |
| **text** | **String** | Message | [optional] |
| **image** | **String** | Image URL | [optional] |
| **buttons** | [**Array&lt;BotMessageButtonsInner&gt;**](BotMessageButtonsInner.md) | Quick reply buttons | [optional] |
| **attachement** | [**Array&lt;BotMessageAttachementInner&gt;**](BotMessageAttachementInner.md) | Additional information | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::BotMessage.new(
  recipient_id: null,
  text: null,
  image: null,
  buttons: null,
  attachement: null
)
```

