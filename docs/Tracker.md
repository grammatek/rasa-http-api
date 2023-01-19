# Rasa::HTTP::Tracker

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | ID of the conversation | [optional] |
| **slots** | **Array&lt;Hash&gt;** | Slot values | [optional] |
| **latest_message** | [**ParseResult**](ParseResult.md) |  | [optional] |
| **latest_event_time** | **Float** | Most recent event time | [optional] |
| **followup_action** | **String** | Deterministic scheduled next action | [optional] |
| **paused** | **Boolean** | Bot is paused | [optional] |
| **events** | [**Array&lt;Event&gt;**](Event.md) |  | [optional] |
| **latest_input_channel** | **String** | Communication channel | [optional] |
| **latest_action_name** | **String** | Name of last bot action | [optional] |
| **latest_action** | [**LatestAction**](LatestAction.md) |  | [optional] |
| **active_loop** | [**TrackerActiveLoop**](TrackerActiveLoop.md) |  | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::Tracker.new(
  conversation_id: default,
  slots: null,
  latest_message: null,
  latest_event_time: 1537645578.314389,
  followup_action: null,
  paused: false,
  events: null,
  latest_input_channel: rest,
  latest_action_name: action_listen,
  latest_action: null,
  active_loop: null
)
```

