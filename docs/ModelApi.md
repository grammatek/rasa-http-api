# Rasa::HTTP::ModelApi

All URIs are relative to *http://localhost:5005*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**parse_model_message**](ModelApi.md#parse_model_message) | **POST** /model/parse | Parse a message using the Rasa model |
| [**predict_model_action**](ModelApi.md#predict_model_action) | **POST** /model/predict | Predict an action on a temporary state |
| [**replace_model**](ModelApi.md#replace_model) | **PUT** /model | Replace the currently loaded model |
| [**test_model_intent**](ModelApi.md#test_model_intent) | **POST** /model/test/intents | Perform an intent evaluation |
| [**test_model_stories**](ModelApi.md#test_model_stories) | **POST** /model/test/stories | Evaluate stories |
| [**train_model**](ModelApi.md#train_model) | **POST** /model/train | Train a Rasa model |
| [**unload_model**](ModelApi.md#unload_model) | **DELETE** /model | Unload the trained model |


## parse_model_message

> <ParseResult> parse_model_message(parse_model_message_request, opts)

Parse a message using the Rasa model

Predicts the intent and entities of the message posted to this endpoint. No messages will be stored to a conversation and no action will be run. This will just retrieve the NLU parse results.

### Examples

```ruby
require 'time'
require 'rasa-http-api'
# setup authorization
Rasa::HTTP.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Rasa::HTTP::ModelApi.new
parse_model_message_request = Rasa::HTTP::ParseModelMessageRequest.new # ParseModelMessageRequest | 
opts = {
  emulation_mode: 'WIT' # String | Specify the emulation mode to use. Emulation mode transforms the response JSON to the format expected by the service specified as the emulation_mode. Requests must still be sent in the regular Rasa format.
}

begin
  # Parse a message using the Rasa model
  result = api_instance.parse_model_message(parse_model_message_request, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->parse_model_message: #{e}"
end
```

#### Using the parse_model_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ParseResult>, Integer, Hash)> parse_model_message_with_http_info(parse_model_message_request, opts)

```ruby
begin
  # Parse a message using the Rasa model
  data, status_code, headers = api_instance.parse_model_message_with_http_info(parse_model_message_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ParseResult>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->parse_model_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **parse_model_message_request** | [**ParseModelMessageRequest**](ParseModelMessageRequest.md) |  |  |
| **emulation_mode** | **String** | Specify the emulation mode to use. Emulation mode transforms the response JSON to the format expected by the service specified as the emulation_mode. Requests must still be sent in the regular Rasa format. | [optional] |

### Return type

[**ParseResult**](ParseResult.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## predict_model_action

> <PredictResult> predict_model_action(event, opts)

Predict an action on a temporary state

Predicts the next action on the tracker state as it is posted to this endpoint. Rasa will create a temporary tracker from the provided events and will use it to predict an action. No messages will be sent and no action will be run.

### Examples

```ruby
require 'time'
require 'rasa-http-api'
# setup authorization
Rasa::HTTP.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Rasa::HTTP::ModelApi.new
event = [Rasa::HTTP::Event.new({event: 'active_loop', name: 'name_example', value: 3.56, entities: [Rasa::HTTP::EntitiesAddedEventAllOfEntities.new({entity: 'entity_example', value: 3.56})]})] # Array<Event> | 
opts = {
  include_events: 'ALL' # String | Specify which events of the tracker the response should contain. * `ALL` - every logged event. * `APPLIED` - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * `AFTER_RESTART` -  all events since the last `restarted` event.   This includes utterances that got reverted and actions that got undone.  * `NONE` - no events.
}

begin
  # Predict an action on a temporary state
  result = api_instance.predict_model_action(event, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->predict_model_action: #{e}"
end
```

#### Using the predict_model_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PredictResult>, Integer, Hash)> predict_model_action_with_http_info(event, opts)

```ruby
begin
  # Predict an action on a temporary state
  data, status_code, headers = api_instance.predict_model_action_with_http_info(event, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PredictResult>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->predict_model_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | [**Array&lt;Event&gt;**](Event.md) |  |  |
| **include_events** | **String** | Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events. | [optional][default to &#39;AFTER_RESTART&#39;] |

### Return type

[**PredictResult**](PredictResult.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replace_model

> replace_model(model_request)

Replace the currently loaded model

Updates the currently loaded model. First, tries to load the model from the local (note: local to Rasa server) storage system. Secondly, tries to load the model from the provided model server configuration. Last, tries to load the model from the provided remote storage.

### Examples

```ruby
require 'time'
require 'rasa-http-api'
# setup authorization
Rasa::HTTP.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Rasa::HTTP::ModelApi.new
model_request = Rasa::HTTP::ModelRequest.new # ModelRequest | 

begin
  # Replace the currently loaded model
  api_instance.replace_model(model_request)
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->replace_model: #{e}"
end
```

#### Using the replace_model_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> replace_model_with_http_info(model_request)

```ruby
begin
  # Replace the currently loaded model
  data, status_code, headers = api_instance.replace_model_with_http_info(model_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->replace_model_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_request** | [**ModelRequest**](ModelRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## test_model_intent

> <NLUEvaluationResult> test_model_intent(body, opts)

Perform an intent evaluation

Evaluates NLU model against a model or using cross-validation.

### Examples

```ruby
require 'time'
require 'rasa-http-api'
# setup authorization
Rasa::HTTP.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Rasa::HTTP::ModelApi.new
body = 'body_example' # String | 
opts = {
  model: 'rasa-model.tar.gz', # String | Model that should be used for evaluation. If the parameter is set, the model will be fetched with the currently loaded configuration setup. However, the currently loaded model will not be updated. The state of the server will not change. If the parameter is not set, the currently loaded model will be used for the evaluation.
  callback_url: 'https://example.com/rasa_evaluations', # String | If specified the call will return immediately with an empty response and status code 204. The actual result or any errors will be sent to the given callback URL as the body of a post request.
  cross_validation_folds: 56 # Integer | 
}

begin
  # Perform an intent evaluation
  result = api_instance.test_model_intent(body, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->test_model_intent: #{e}"
end
```

#### Using the test_model_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NLUEvaluationResult>, Integer, Hash)> test_model_intent_with_http_info(body, opts)

```ruby
begin
  # Perform an intent evaluation
  data, status_code, headers = api_instance.test_model_intent_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NLUEvaluationResult>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->test_model_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |
| **model** | **String** | Model that should be used for evaluation. If the parameter is set, the model will be fetched with the currently loaded configuration setup. However, the currently loaded model will not be updated. The state of the server will not change. If the parameter is not set, the currently loaded model will be used for the evaluation. | [optional] |
| **callback_url** | **String** | If specified the call will return immediately with an empty response and status code 204. The actual result or any errors will be sent to the given callback URL as the body of a post request. | [optional][default to &#39;None&#39;] |
| **cross_validation_folds** | **Integer** |  | [optional] |

### Return type

[**NLUEvaluationResult**](NLUEvaluationResult.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/x-yaml, application/json
- **Accept**: application/json


## test_model_stories

> <EvaluationStoriesResult> test_model_stories(body, opts)

Evaluate stories

Evaluates one or multiple stories against the currently loaded Rasa model.

### Examples

```ruby
require 'time'
require 'rasa-http-api'
# setup authorization
Rasa::HTTP.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Rasa::HTTP::ModelApi.new
body = 'body_example' # String | 
opts = {
  e2e: false # Boolean | Perform an end-to-end evaluation on the posted stories.
}

begin
  # Evaluate stories
  result = api_instance.test_model_stories(body, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->test_model_stories: #{e}"
end
```

#### Using the test_model_stories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EvaluationStoriesResult>, Integer, Hash)> test_model_stories_with_http_info(body, opts)

```ruby
begin
  # Evaluate stories
  data, status_code, headers = api_instance.test_model_stories_with_http_info(body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EvaluationStoriesResult>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->test_model_stories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | **String** |  |  |
| **e2e** | **Boolean** | Perform an end-to-end evaluation on the posted stories. | [optional][default to false] |

### Return type

[**EvaluationStoriesResult**](EvaluationStoriesResult.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: text/yml
- **Accept**: application/json


## train_model

> File train_model(yaml_training_request, opts)

Train a Rasa model

Trains a new Rasa model. Depending on the data given only a dialogue model, only a NLU model, or a model combining a trained dialogue model with an NLU model will be trained. The new model is not loaded by default.

### Examples

```ruby
require 'time'
require 'rasa-http-api'
# setup authorization
Rasa::HTTP.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Rasa::HTTP::ModelApi.new
yaml_training_request = Rasa::HTTP::YAMLTrainingRequest.new # YAMLTrainingRequest | The training data should be in YAML format.
opts = {
  save_to_default_model_directory: true, # Boolean | 
  force_training: true, # Boolean | 
  augmentation: 'augmentation_example', # String | 
  num_threads: 'num_threads_example', # String | 
  callback_url: 'https://example.com/rasa_evaluations' # String | If specified the call will return immediately with an empty response and status code 204. The actual result or any errors will be sent to the given callback URL as the body of a post request.
}

begin
  # Train a Rasa model
  result = api_instance.train_model(yaml_training_request, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->train_model: #{e}"
end
```

#### Using the train_model_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> train_model_with_http_info(yaml_training_request, opts)

```ruby
begin
  # Train a Rasa model
  data, status_code, headers = api_instance.train_model_with_http_info(yaml_training_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->train_model_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **yaml_training_request** | [**YAMLTrainingRequest**](YAMLTrainingRequest.md) | The training data should be in YAML format. |  |
| **save_to_default_model_directory** | **Boolean** |  | [optional][default to true] |
| **force_training** | **Boolean** |  | [optional][default to false] |
| **augmentation** | **String** |  | [optional][default to &#39;50&#39;] |
| **num_threads** | **String** |  | [optional][default to &#39;1&#39;] |
| **callback_url** | **String** | If specified the call will return immediately with an empty response and status code 204. The actual result or any errors will be sent to the given callback URL as the body of a post request. | [optional][default to &#39;None&#39;] |

### Return type

**File**

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/yaml
- **Accept**: application/octet-stream, application/json


## unload_model

> unload_model

Unload the trained model

Unloads the currently loaded trained model from the server.

### Examples

```ruby
require 'time'
require 'rasa-http-api'
# setup authorization
Rasa::HTTP.configure do |config|
  # Configure Bearer authorization (JWT): JWT
  config.access_token = 'YOUR_BEARER_TOKEN'

  # Configure API key authorization: TokenAuth
  config.api_key['TokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['TokenAuth'] = 'Bearer'
end

api_instance = Rasa::HTTP::ModelApi.new

begin
  # Unload the trained model
  api_instance.unload_model
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->unload_model: #{e}"
end
```

#### Using the unload_model_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unload_model_with_http_info

```ruby
begin
  # Unload the trained model
  data, status_code, headers = api_instance.unload_model_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling ModelApi->unload_model_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

