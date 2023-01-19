# Rasa::HTTP::YAMLTrainingRequestSessionConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **session_expiration_time** | **Integer** |  | [optional] |
| **carry_over_slots_to_new_session** | **Boolean** |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::YAMLTrainingRequestSessionConfig.new(
  session_expiration_time: null,
  carry_over_slots_to_new_session: null
)
```

