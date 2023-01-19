=begin
#Rasa - Server Endpoints

#The Rasa server provides endpoints to retrieve trackers of conversations as well as endpoints to modify them. Additionally, endpoints for training and testing models are provided.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

# Common files
require 'rasa-http-api/api_client'
require 'rasa-http-api/api_error'
require 'rasa-http-api/version'
require 'rasa-http-api/configuration'

# Models
require 'rasa-http-api/models/action_event'
require 'rasa-http-api/models/action_event_all_of'
require 'rasa-http-api/models/action_execution_rejected_event'
require 'rasa-http-api/models/action_execution_rejected_event_all_of'
require 'rasa-http-api/models/action_request'
require 'rasa-http-api/models/active_loop_event'
require 'rasa-http-api/models/active_loop_event_all_of'
require 'rasa-http-api/models/add_conversation_tracker_events_request'
require 'rasa-http-api/models/agent_event'
require 'rasa-http-api/models/agent_event_all_of'
require 'rasa-http-api/models/basic_event'
require 'rasa-http-api/models/bot_event'
require 'rasa-http-api/models/bot_event_all_of'
require 'rasa-http-api/models/bot_message'
require 'rasa-http-api/models/bot_message_attachement_inner'
require 'rasa-http-api/models/bot_message_buttons_inner'
require 'rasa-http-api/models/cancel_reminder_event'
require 'rasa-http-api/models/cancel_reminder_event_all_of'
require 'rasa-http-api/models/common_example'
require 'rasa-http-api/models/conversation_accuracy_report'
require 'rasa-http-api/models/domain'
require 'rasa-http-api/models/domain_config'
require 'rasa-http-api/models/endpoint_config'
require 'rasa-http-api/models/entities_added_event'
require 'rasa-http-api/models/entities_added_event_all_of'
require 'rasa-http-api/models/entities_added_event_all_of_entities'
require 'rasa-http-api/models/entity'
require 'rasa-http-api/models/entity_test_error'
require 'rasa-http-api/models/error'
require 'rasa-http-api/models/evaluation_item'
require 'rasa-http-api/models/evaluation_item_errors_inner'
require 'rasa-http-api/models/evaluation_item_predictions_inner'
require 'rasa-http-api/models/evaluation_stories_result'
require 'rasa-http-api/models/evaluation_stories_result_actions_inner'
require 'rasa-http-api/models/evaluation_stories_result_report'
require 'rasa-http-api/models/evaluation_stories_result_report_value'
require 'rasa-http-api/models/event'
require 'rasa-http-api/models/execute_conversation_action200_response'
require 'rasa-http-api/models/export_event'
require 'rasa-http-api/models/export_event_all_of'
require 'rasa-http-api/models/followup_event'
require 'rasa-http-api/models/followup_event_all_of'
require 'rasa-http-api/models/form_event'
require 'rasa-http-api/models/form_event_all_of'
require 'rasa-http-api/models/form_validation_event'
require 'rasa-http-api/models/form_validation_event_all_of'
require 'rasa-http-api/models/get_status200_response'
require 'rasa-http-api/models/get_version200_response'
require 'rasa-http-api/models/intent'
require 'rasa-http-api/models/intent_description_value'
require 'rasa-http-api/models/intent_test_error'
require 'rasa-http-api/models/intent_trigger_request'
require 'rasa-http-api/models/latest_action'
require 'rasa-http-api/models/loop_interrupted_event'
require 'rasa-http-api/models/loop_interrupted_event_all_of'
require 'rasa-http-api/models/message'
require 'rasa-http-api/models/model_request'
require 'rasa-http-api/models/nlu_evaluation_result'
require 'rasa-http-api/models/parse_model_message_request'
require 'rasa-http-api/models/parse_result'
require 'rasa-http-api/models/pause_event'
require 'rasa-http-api/models/pause_event_all_of'
require 'rasa-http-api/models/predict_result'
require 'rasa-http-api/models/predict_result_scores_inner'
require 'rasa-http-api/models/rasa_nlu_data'
require 'rasa-http-api/models/reminder_event'
require 'rasa-http-api/models/reminder_event_all_of'
require 'rasa-http-api/models/reset_slots_event'
require 'rasa-http-api/models/reset_slots_event_all_of'
require 'rasa-http-api/models/response_selector_test_error'
require 'rasa-http-api/models/restart_event'
require 'rasa-http-api/models/restart_event_all_of'
require 'rasa-http-api/models/resume_event'
require 'rasa-http-api/models/resume_event_all_of'
require 'rasa-http-api/models/rewind_event'
require 'rasa-http-api/models/rewind_event_all_of'
require 'rasa-http-api/models/session_started_event'
require 'rasa-http-api/models/session_started_event_all_of'
require 'rasa-http-api/models/slot_description'
require 'rasa-http-api/models/slot_event'
require 'rasa-http-api/models/slot_event_all_of'
require 'rasa-http-api/models/slot_value'
require 'rasa-http-api/models/template_description'
require 'rasa-http-api/models/tracker'
require 'rasa-http-api/models/tracker_active_loop'
require 'rasa-http-api/models/undo_event'
require 'rasa-http-api/models/undo_event_all_of'
require 'rasa-http-api/models/user_event'
require 'rasa-http-api/models/user_event_all_of'
require 'rasa-http-api/models/user_featurization_event'
require 'rasa-http-api/models/user_featurization_event_all_of'
require 'rasa-http-api/models/yaml_training_request'
require 'rasa-http-api/models/yaml_training_request_session_config'

# APIs
require 'rasa-http-api/api/domain_api'
require 'rasa-http-api/api/model_api'
require 'rasa-http-api/api/server_information_api'
require 'rasa-http-api/api/tracker_api'

module Rasa::HTTP
  class << self
    # Customize default settings for the SDK using block.
    #   Rasa::HTTP.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
