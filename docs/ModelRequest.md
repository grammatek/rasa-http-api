# Rasa::HTTP::ModelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_file** | **String** | Path to model file | [optional] |
| **model_server** | [**EndpointConfig**](EndpointConfig.md) |  | [optional] |
| **remote_storage** | **String** | Name of remote storage system | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::ModelRequest.new(
  model_file: /absolute-path-to-models-directory/models/20190512.tar.gz,
  model_server: null,
  remote_storage: aws
)
```

