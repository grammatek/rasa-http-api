# Rasa::HTTP::YAMLTrainingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline** | **Array** | Pipeline list | [optional] |
| **policies** | **Array** | Policies list | [optional] |
| **entities** | **Array** | Entity list | [optional] |
| **slots** | **Array** | Slots list | [optional] |
| **actions** | **Array** | Action list | [optional] |
| **forms** | **Array** | Forms list | [optional] |
| **e2e_actions** | **Array** | E2E Action list | [optional] |
| **responses** | [**Hash&lt;String, TemplateDescription&gt;**](TemplateDescription.md) | Bot response templates | [optional] |
| **session_config** | [**YAMLTrainingRequestSessionConfig**](YAMLTrainingRequestSessionConfig.md) |  | [optional] |
| **nlu** | **Array** | Rasa NLU data, array of intents | [optional] |
| **rules** | **Array** | Rule list | [optional] |
| **stories** | **Array** | Rasa Core stories in YAML format | [optional] |
| **force** | **Boolean** | Force a model training even if the data has not changed | [optional] |
| **save_to_default_model_directory** | **Boolean** | If &#x60;true&#x60; (default) the trained model will be saved in the default model directory, if &#x60;false&#x60; it will be saved in a temporary directory | [optional] |

## Example

```ruby
require 'rasa-http-api'

instance = Rasa::HTTP::YAMLTrainingRequest.new(
  pipeline: null,
  policies: null,
  entities: null,
  slots: null,
  actions: null,
  forms: null,
  e2e_actions: null,
  responses: null,
  session_config: null,
  nlu: null,
  rules: null,
  stories: null,
  force: false,
  save_to_default_model_directory: null
)
```

