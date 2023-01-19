# Rasa::HTTP::GetVersion200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | Rasa version number | [optional] |
| **minimum_compatible_version** | **String** | Minimum version this Rasa version is able to load models from | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::GetVersion200Response.new(
  version: null,
  minimum_compatible_version: null
)
```

