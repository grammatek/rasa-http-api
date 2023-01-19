# Rasa::HTTP::GetStatus200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_id** | **String** | ID of the loaded model | [optional] |
| **model_file** | **String** | Path of the loaded model | [optional] |
| **num_active_training_jobs** | **Integer** | Number of running training processes | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::GetStatus200Response.new(
  model_id: 75a985b7b86d442ca013d61ea4781b22,
  model_file: 20190429-103105.tar.gz,
  num_active_training_jobs: 2
)
```

