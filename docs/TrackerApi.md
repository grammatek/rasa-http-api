# Rasa::HTTP::TrackerApi

All URIs are relative to *http://localhost:5005*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_conversation_message**](TrackerApi.md#add_conversation_message) | **POST** /conversations/{conversation_id}/messages | Add a message to a tracker |
| [**add_conversation_tracker_events**](TrackerApi.md#add_conversation_tracker_events) | **POST** /conversations/{conversation_id}/tracker/events | Append events to a tracker |
| [**execute_conversation_action**](TrackerApi.md#execute_conversation_action) | **POST** /conversations/{conversation_id}/execute | Run an action in a conversation |
| [**get_conversation_story**](TrackerApi.md#get_conversation_story) | **GET** /conversations/{conversation_id}/story | Retrieve an end-to-end story corresponding to a conversation |
| [**get_conversation_tracker**](TrackerApi.md#get_conversation_tracker) | **GET** /conversations/{conversation_id}/tracker | Retrieve a conversations tracker |
| [**predict_conversation_action**](TrackerApi.md#predict_conversation_action) | **POST** /conversations/{conversation_id}/predict | Predict the next action |
| [**replace_conversation_tracker_events**](TrackerApi.md#replace_conversation_tracker_events) | **PUT** /conversations/{conversation_id}/tracker/events | Replace a trackers events |
| [**trigger_conversation_intent**](TrackerApi.md#trigger_conversation_intent) | **POST** /conversations/{conversation_id}/trigger_intent | Inject an intent into a conversation |


## add_conversation_message

> <Tracker> add_conversation_message(conversation_id, message, opts)

Add a message to a tracker

Adds a message to a tracker. This doesn't trigger the prediction loop. It will log the message on the tracker and return, no actions will be predicted or run. This is often used together with the predict endpoint.

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

api_instance = Rasa::HTTP::TrackerApi.new
conversation_id = 'default' # String | Id of the conversation
message = Rasa::HTTP::Message.new({text: 'Hello!', sender: 'user'}) # Message | 
opts = {
  include_events: 'ALL' # String | Specify which events of the tracker the response should contain. * `ALL` - every logged event. * `APPLIED` - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * `AFTER_RESTART` -  all events since the last `restarted` event.   This includes utterances that got reverted and actions that got undone.  * `NONE` - no events.
}

begin
  # Add a message to a tracker
  result = api_instance.add_conversation_message(conversation_id, message, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->add_conversation_message: #{e}"
end
```

#### Using the add_conversation_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tracker>, Integer, Hash)> add_conversation_message_with_http_info(conversation_id, message, opts)

```ruby
begin
  # Add a message to a tracker
  data, status_code, headers = api_instance.add_conversation_message_with_http_info(conversation_id, message, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tracker>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->add_conversation_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Id of the conversation |  |
| **message** | [**Message**](Message.md) |  |  |
| **include_events** | **String** | Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events. | [optional][default to &#39;AFTER_RESTART&#39;] |

### Return type

[**Tracker**](Tracker.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_conversation_tracker_events

> <Tracker> add_conversation_tracker_events(conversation_id, add_conversation_tracker_events_request, opts)

Append events to a tracker

Appends one or multiple new events to the tracker state of the conversation. Any existing events will be kept and the new events will be appended, updating the existing state. If events are appended to a new conversation ID, the tracker will be initialised with a new session.

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

api_instance = Rasa::HTTP::TrackerApi.new
conversation_id = 'default' # String | Id of the conversation
add_conversation_tracker_events_request = nil # AddConversationTrackerEventsRequest | 
opts = {
  include_events: 'ALL', # String | Specify which events of the tracker the response should contain. * `ALL` - every logged event. * `APPLIED` - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * `AFTER_RESTART` -  all events since the last `restarted` event.   This includes utterances that got reverted and actions that got undone.  * `NONE` - no events.
  output_channel: 'latest', # String | The bot's utterances will be forwarded to this channel. It uses the credentials listed in `credentials.yml` to connect. In case the channel does not support this, the utterances will be returned in the response body. Use `latest` to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter.
  execute_side_effects: true # Boolean | 
}

begin
  # Append events to a tracker
  result = api_instance.add_conversation_tracker_events(conversation_id, add_conversation_tracker_events_request, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->add_conversation_tracker_events: #{e}"
end
```

#### Using the add_conversation_tracker_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tracker>, Integer, Hash)> add_conversation_tracker_events_with_http_info(conversation_id, add_conversation_tracker_events_request, opts)

```ruby
begin
  # Append events to a tracker
  data, status_code, headers = api_instance.add_conversation_tracker_events_with_http_info(conversation_id, add_conversation_tracker_events_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tracker>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->add_conversation_tracker_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Id of the conversation |  |
| **add_conversation_tracker_events_request** | [**AddConversationTrackerEventsRequest**](AddConversationTrackerEventsRequest.md) |  |  |
| **include_events** | **String** | Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events. | [optional][default to &#39;AFTER_RESTART&#39;] |
| **output_channel** | **String** | The bot&#39;s utterances will be forwarded to this channel. It uses the credentials listed in &#x60;credentials.yml&#x60; to connect. In case the channel does not support this, the utterances will be returned in the response body. Use &#x60;latest&#x60; to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter. | [optional] |
| **execute_side_effects** | **Boolean** |  | [optional][default to false] |

### Return type

[**Tracker**](Tracker.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## execute_conversation_action

> <ExecuteConversationAction200Response> execute_conversation_action(conversation_id, action_request, opts)

Run an action in a conversation

DEPRECATED. Runs the action, calling the action server if necessary. Any responses sent by the executed action will be forwarded to the channel specified in the output_channel parameter. If no output channel is specified, any messages that should be sent to the user will be included in the response of this endpoint.

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

api_instance = Rasa::HTTP::TrackerApi.new
conversation_id = 'default' # String | Id of the conversation
action_request = Rasa::HTTP::ActionRequest.new({name: 'utter_greet'}) # ActionRequest | 
opts = {
  include_events: 'ALL', # String | Specify which events of the tracker the response should contain. * `ALL` - every logged event. * `APPLIED` - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * `AFTER_RESTART` -  all events since the last `restarted` event.   This includes utterances that got reverted and actions that got undone.  * `NONE` - no events.
  output_channel: 'latest' # String | The bot's utterances will be forwarded to this channel. It uses the credentials listed in `credentials.yml` to connect. In case the channel does not support this, the utterances will be returned in the response body. Use `latest` to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter.
}

begin
  # Run an action in a conversation
  result = api_instance.execute_conversation_action(conversation_id, action_request, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->execute_conversation_action: #{e}"
end
```

#### Using the execute_conversation_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExecuteConversationAction200Response>, Integer, Hash)> execute_conversation_action_with_http_info(conversation_id, action_request, opts)

```ruby
begin
  # Run an action in a conversation
  data, status_code, headers = api_instance.execute_conversation_action_with_http_info(conversation_id, action_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExecuteConversationAction200Response>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->execute_conversation_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Id of the conversation |  |
| **action_request** | [**ActionRequest**](ActionRequest.md) |  |  |
| **include_events** | **String** | Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events. | [optional][default to &#39;AFTER_RESTART&#39;] |
| **output_channel** | **String** | The bot&#39;s utterances will be forwarded to this channel. It uses the credentials listed in &#x60;credentials.yml&#x60; to connect. In case the channel does not support this, the utterances will be returned in the response body. Use &#x60;latest&#x60; to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter. | [optional] |

### Return type

[**ExecuteConversationAction200Response**](ExecuteConversationAction200Response.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_conversation_story

> get_conversation_story(conversation_id, opts)

Retrieve an end-to-end story corresponding to a conversation

The story represents the whole conversation in end-to-end format. This can be posted to the '/test/stories' endpoint and used as a test.

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

api_instance = Rasa::HTTP::TrackerApi.new
conversation_id = 'default' # String | Id of the conversation
opts = {
  _until: 1559744410, # Float | All events previous to the passed timestamp will be replayed. Events that occur exactly at the target time will be included.
  all_sessions: false # Boolean | Whether to fetch all sessions in a conversation, or only the latest session * `true` - fetch all conversation sessions. * `false` - [default] fetch only the latest conversation session.
}

begin
  # Retrieve an end-to-end story corresponding to a conversation
  api_instance.get_conversation_story(conversation_id, opts)
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->get_conversation_story: #{e}"
end
```

#### Using the get_conversation_story_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_conversation_story_with_http_info(conversation_id, opts)

```ruby
begin
  # Retrieve an end-to-end story corresponding to a conversation
  data, status_code, headers = api_instance.get_conversation_story_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->get_conversation_story_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Id of the conversation |  |
| **_until** | **Float** | All events previous to the passed timestamp will be replayed. Events that occur exactly at the target time will be included. | [optional] |
| **all_sessions** | **Boolean** | Whether to fetch all sessions in a conversation, or only the latest session * &#x60;true&#x60; - fetch all conversation sessions. * &#x60;false&#x60; - [default] fetch only the latest conversation session. | [optional][default to false] |

### Return type

nil (empty response body)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/yml, application/json


## get_conversation_tracker

> <Tracker> get_conversation_tracker(conversation_id, opts)

Retrieve a conversations tracker

The tracker represents the state of the conversation. The state of the tracker is created by applying a sequence of events, which modify the state. These events can optionally be included in the response.

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

api_instance = Rasa::HTTP::TrackerApi.new
conversation_id = 'default' # String | Id of the conversation
opts = {
  include_events: 'ALL', # String | Specify which events of the tracker the response should contain. * `ALL` - every logged event. * `APPLIED` - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * `AFTER_RESTART` -  all events since the last `restarted` event.   This includes utterances that got reverted and actions that got undone.  * `NONE` - no events.
  _until: 1559744410 # Float | All events previous to the passed timestamp will be replayed. Events that occur exactly at the target time will be included.
}

begin
  # Retrieve a conversations tracker
  result = api_instance.get_conversation_tracker(conversation_id, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->get_conversation_tracker: #{e}"
end
```

#### Using the get_conversation_tracker_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tracker>, Integer, Hash)> get_conversation_tracker_with_http_info(conversation_id, opts)

```ruby
begin
  # Retrieve a conversations tracker
  data, status_code, headers = api_instance.get_conversation_tracker_with_http_info(conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tracker>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->get_conversation_tracker_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Id of the conversation |  |
| **include_events** | **String** | Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events. | [optional][default to &#39;AFTER_RESTART&#39;] |
| **_until** | **Float** | All events previous to the passed timestamp will be replayed. Events that occur exactly at the target time will be included. | [optional] |

### Return type

[**Tracker**](Tracker.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## predict_conversation_action

> <PredictResult> predict_conversation_action(conversation_id)

Predict the next action

Runs the conversations tracker through the model's policies to predict the scores of all actions present in the model's domain. Actions are returned in the 'scores' array, sorted on their 'score' values. The state of the tracker is not modified.

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

api_instance = Rasa::HTTP::TrackerApi.new
conversation_id = 'default' # String | Id of the conversation

begin
  # Predict the next action
  result = api_instance.predict_conversation_action(conversation_id)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->predict_conversation_action: #{e}"
end
```

#### Using the predict_conversation_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PredictResult>, Integer, Hash)> predict_conversation_action_with_http_info(conversation_id)

```ruby
begin
  # Predict the next action
  data, status_code, headers = api_instance.predict_conversation_action_with_http_info(conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PredictResult>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->predict_conversation_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Id of the conversation |  |

### Return type

[**PredictResult**](PredictResult.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## replace_conversation_tracker_events

> <Tracker> replace_conversation_tracker_events(conversation_id, event, opts)

Replace a trackers events

Replaces all events of a tracker with the passed list of events. This endpoint should not be used to modify trackers in a production setup, but rather for creating training data.

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

api_instance = Rasa::HTTP::TrackerApi.new
conversation_id = 'default' # String | Id of the conversation
event = [Rasa::HTTP::Event.new({event: 'active_loop', name: 'name_example', value: 3.56, entities: [Rasa::HTTP::EntitiesAddedEventAllOfEntities.new({entity: 'entity_example', value: 3.56})]})] # Array<Event> | 
opts = {
  include_events: 'ALL' # String | Specify which events of the tracker the response should contain. * `ALL` - every logged event. * `APPLIED` - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * `AFTER_RESTART` -  all events since the last `restarted` event.   This includes utterances that got reverted and actions that got undone.  * `NONE` - no events.
}

begin
  # Replace a trackers events
  result = api_instance.replace_conversation_tracker_events(conversation_id, event, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->replace_conversation_tracker_events: #{e}"
end
```

#### Using the replace_conversation_tracker_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Tracker>, Integer, Hash)> replace_conversation_tracker_events_with_http_info(conversation_id, event, opts)

```ruby
begin
  # Replace a trackers events
  data, status_code, headers = api_instance.replace_conversation_tracker_events_with_http_info(conversation_id, event, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Tracker>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->replace_conversation_tracker_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Id of the conversation |  |
| **event** | [**Array&lt;Event&gt;**](Event.md) |  |  |
| **include_events** | **String** | Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events. | [optional][default to &#39;AFTER_RESTART&#39;] |

### Return type

[**Tracker**](Tracker.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## trigger_conversation_intent

> <ExecuteConversationAction200Response> trigger_conversation_intent(conversation_id, intent_trigger_request, opts)

Inject an intent into a conversation

Sends a specified intent and list of entities in place of a user message. The bot then predicts and executes a response action. Any responses sent by the executed action will be forwarded to the channel specified in the ``output_channel`` parameter. If no output channel is specified, any messages that should be sent to the user will be included in the response of this endpoint.

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

api_instance = Rasa::HTTP::TrackerApi.new
conversation_id = 'default' # String | Id of the conversation
intent_trigger_request = Rasa::HTTP::IntentTriggerRequest.new({name: 'greet'}) # IntentTriggerRequest | 
opts = {
  include_events: 'ALL', # String | Specify which events of the tracker the response should contain. * `ALL` - every logged event. * `APPLIED` - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * `AFTER_RESTART` -  all events since the last `restarted` event.   This includes utterances that got reverted and actions that got undone.  * `NONE` - no events.
  output_channel: 'latest' # String | The bot's utterances will be forwarded to this channel. It uses the credentials listed in `credentials.yml` to connect. In case the channel does not support this, the utterances will be returned in the response body. Use `latest` to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter.
}

begin
  # Inject an intent into a conversation
  result = api_instance.trigger_conversation_intent(conversation_id, intent_trigger_request, opts)
  p result
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->trigger_conversation_intent: #{e}"
end
```

#### Using the trigger_conversation_intent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ExecuteConversationAction200Response>, Integer, Hash)> trigger_conversation_intent_with_http_info(conversation_id, intent_trigger_request, opts)

```ruby
begin
  # Inject an intent into a conversation
  data, status_code, headers = api_instance.trigger_conversation_intent_with_http_info(conversation_id, intent_trigger_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ExecuteConversationAction200Response>
rescue Rasa::HTTP::ApiError => e
  puts "Error when calling TrackerApi->trigger_conversation_intent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | Id of the conversation |  |
| **intent_trigger_request** | [**IntentTriggerRequest**](IntentTriggerRequest.md) |  |  |
| **include_events** | **String** | Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events. | [optional][default to &#39;AFTER_RESTART&#39;] |
| **output_channel** | **String** | The bot&#39;s utterances will be forwarded to this channel. It uses the credentials listed in &#x60;credentials.yml&#x60; to connect. In case the channel does not support this, the utterances will be returned in the response body. Use &#x60;latest&#x60; to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter. | [optional] |

### Return type

[**ExecuteConversationAction200Response**](ExecuteConversationAction200Response.md)

### Authorization

[JWT](../README.md#JWT), [TokenAuth](../README.md#TokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

