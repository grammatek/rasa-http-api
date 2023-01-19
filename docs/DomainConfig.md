# Rasa::HTTP::DomainConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **store_entities_as_slots** | **Boolean** | Store all entites as slot when found | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::DomainConfig.new(
  store_entities_as_slots: false
)
```

