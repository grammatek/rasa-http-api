# Rasa::HTTP::Domain

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**DomainConfig**](DomainConfig.md) |  | [optional] |
| **intents** | **Array&lt;Hash&gt;** | All intent names and properties | [optional] |
| **entities** | **Array&lt;String&gt;** | All entity names | [optional] |
| **slots** | [**Hash&lt;String, SlotDescription&gt;**](SlotDescription.md) | Slot names and configuration | [optional] |
| **responses** | [**Hash&lt;String, TemplateDescription&gt;**](TemplateDescription.md) | Bot response templates | [optional] |
| **actions** | **Array&lt;String&gt;** | Available action names | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::Domain.new(
  config: null,
  intents: null,
  entities: [&quot;person&quot;,&quot;location&quot;],
  slots: null,
  responses: null,
  actions: [&quot;action_greet&quot;,&quot;action_goodbye&quot;,&quot;action_listen&quot;]
)
```

