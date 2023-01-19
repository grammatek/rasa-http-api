# Rasa::HTTP::EvaluationItemErrorsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'rasa-http-api'

Rasa::HTTP::EvaluationItemErrorsInner.openapi_one_of
# =>
# [
#   :'EntityTestError',
#   :'IntentTestError',
#   :'ResponseSelectorTestError'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'rasa-http-api'

Rasa::HTTP::EvaluationItemErrorsInner.build(data)
# => #<EntityTestError:0x00007fdd4aab02a0>

Rasa::HTTP::EvaluationItemErrorsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EntityTestError`
- `IntentTestError`
- `ResponseSelectorTestError`
- `nil` (if no type matches)

