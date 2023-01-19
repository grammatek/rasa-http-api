# Rasa::HTTP::AddConversationTrackerEventsRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'rasa-http-api'

Rasa::HTTP::AddConversationTrackerEventsRequest.openapi_one_of
# =>
# [
#   :'Array<Event>',
#   :'Event'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'rasa-http-api'

Rasa::HTTP::AddConversationTrackerEventsRequest.build(data)
# => #<Array<Event>:0x00007fdd4aab02a0>

Rasa::HTTP::AddConversationTrackerEventsRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Array<Event>`
- `Event`
- `nil` (if no type matches)

