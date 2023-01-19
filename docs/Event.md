# Rasa::HTTP::Event

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
| **policy** | **String** |  | [optional] |
| **confidence** | **Float** |  | [optional] |
| **name** | **String** |  |  |
| **hide_rule_turn** | **Boolean** |  | [optional] |
| **action_text** | **String** |  | [optional] |
| **value** | **Object** |  |  |
| **entities** | [**Array&lt;EntitiesAddedEventAllOfEntities&gt;**](EntitiesAddedEventAllOfEntities.md) |  |  |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::Event.new(
  event: active_loop,
  timestamp: null,
  metadata: {&quot;arbitrary_metadata_key&quot;:&quot;some string&quot;,&quot;more_metadata&quot;:1.0},
  text: null,
  input_channel: null,
  message_id: null,
  parse_data: null,
  policy: null,
  confidence: null,
  name: null,
  hide_rule_turn: null,
  action_text: null,
  value: null,
  entities: null
)
```

