# Rasa::HTTP::CommonExample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entities** | [**Array&lt;Entity&gt;**](Entity.md) | Expected entities | [optional] |
| **intent** | **String** | Intent name | [optional] |
| **text** | **String** | Text of the message | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::CommonExample.new(
  entities: null,
  intent: null,
  text: Hello!
)
```

