# Rasa::HTTP::ParseResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entities** | [**Array&lt;Entity&gt;**](Entity.md) | Parsed entities | [optional] |
| **intent** | [**Intent**](Intent.md) |  | [optional] |
| **intent_ranking** | [**Array&lt;Intent&gt;**](Intent.md) | Scores of all intents | [optional] |
| **text** | **String** | Text of the message |  |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::ParseResult.new(
  entities: null,
  intent: null,
  intent_ranking: null,
  text: Hello!
)
```

