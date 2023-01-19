=begin
#Rasa - Server Endpoints

#The Rasa server provides endpoints to retrieve trackers of conversations as well as endpoints to modify them. Additionally, endpoints for training and testing models are provided.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Rasa::HTTP::TrackerApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TrackerApi' do
  before do
    # run before each test
    @api_instance = Rasa::HTTP::TrackerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TrackerApi' do
    it 'should create an instance of TrackerApi' do
      expect(@api_instance).to be_instance_of(Rasa::HTTP::TrackerApi)
    end
  end

  # unit tests for add_conversation_message
  # Add a message to a tracker
  # Adds a message to a tracker. This doesn&#39;t trigger the prediction loop. It will log the message on the tracker and return, no actions will be predicted or run. This is often used together with the predict endpoint.
  # @param conversation_id Id of the conversation
  # @param message 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include_events Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events.
  # @return [Tracker]
  describe 'add_conversation_message test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_conversation_tracker_events
  # Append events to a tracker
  # Appends one or multiple new events to the tracker state of the conversation. Any existing events will be kept and the new events will be appended, updating the existing state. If events are appended to a new conversation ID, the tracker will be initialised with a new session.
  # @param conversation_id Id of the conversation
  # @param add_conversation_tracker_events_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include_events Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events.
  # @option opts [String] :output_channel The bot&#39;s utterances will be forwarded to this channel. It uses the credentials listed in &#x60;credentials.yml&#x60; to connect. In case the channel does not support this, the utterances will be returned in the response body. Use &#x60;latest&#x60; to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter.
  # @option opts [Boolean] :execute_side_effects 
  # @return [Tracker]
  describe 'add_conversation_tracker_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for execute_conversation_action
  # Run an action in a conversation
  # DEPRECATED. Runs the action, calling the action server if necessary. Any responses sent by the executed action will be forwarded to the channel specified in the output_channel parameter. If no output channel is specified, any messages that should be sent to the user will be included in the response of this endpoint.
  # @param conversation_id Id of the conversation
  # @param action_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include_events Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events.
  # @option opts [String] :output_channel The bot&#39;s utterances will be forwarded to this channel. It uses the credentials listed in &#x60;credentials.yml&#x60; to connect. In case the channel does not support this, the utterances will be returned in the response body. Use &#x60;latest&#x60; to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter.
  # @return [ExecuteConversationAction200Response]
  describe 'execute_conversation_action test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conversation_story
  # Retrieve an end-to-end story corresponding to a conversation
  # The story represents the whole conversation in end-to-end format. This can be posted to the &#39;/test/stories&#39; endpoint and used as a test.
  # @param conversation_id Id of the conversation
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :_until All events previous to the passed timestamp will be replayed. Events that occur exactly at the target time will be included.
  # @option opts [Boolean] :all_sessions Whether to fetch all sessions in a conversation, or only the latest session * &#x60;true&#x60; - fetch all conversation sessions. * &#x60;false&#x60; - [default] fetch only the latest conversation session.
  # @return [nil]
  describe 'get_conversation_story test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_conversation_tracker
  # Retrieve a conversations tracker
  # The tracker represents the state of the conversation. The state of the tracker is created by applying a sequence of events, which modify the state. These events can optionally be included in the response.
  # @param conversation_id Id of the conversation
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include_events Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events.
  # @option opts [Float] :_until All events previous to the passed timestamp will be replayed. Events that occur exactly at the target time will be included.
  # @return [Tracker]
  describe 'get_conversation_tracker test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for predict_conversation_action
  # Predict the next action
  # Runs the conversations tracker through the model&#39;s policies to predict the scores of all actions present in the model&#39;s domain. Actions are returned in the &#39;scores&#39; array, sorted on their &#39;score&#39; values. The state of the tracker is not modified.
  # @param conversation_id Id of the conversation
  # @param [Hash] opts the optional parameters
  # @return [PredictResult]
  describe 'predict_conversation_action test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_conversation_tracker_events
  # Replace a trackers events
  # Replaces all events of a tracker with the passed list of events. This endpoint should not be used to modify trackers in a production setup, but rather for creating training data.
  # @param conversation_id Id of the conversation
  # @param event 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include_events Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events.
  # @return [Tracker]
  describe 'replace_conversation_tracker_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for trigger_conversation_intent
  # Inject an intent into a conversation
  # Sends a specified intent and list of entities in place of a user message. The bot then predicts and executes a response action. Any responses sent by the executed action will be forwarded to the channel specified in the &#x60;&#x60;output_channel&#x60;&#x60; parameter. If no output channel is specified, any messages that should be sent to the user will be included in the response of this endpoint.
  # @param conversation_id Id of the conversation
  # @param intent_trigger_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include_events Specify which events of the tracker the response should contain. * &#x60;ALL&#x60; - every logged event. * &#x60;APPLIED&#x60; - only events that contribute to the trackers state. This excludes reverted utterances and actions that got undone. * &#x60;AFTER_RESTART&#x60; -  all events since the last &#x60;restarted&#x60; event.   This includes utterances that got reverted and actions that got undone.  * &#x60;NONE&#x60; - no events.
  # @option opts [String] :output_channel The bot&#39;s utterances will be forwarded to this channel. It uses the credentials listed in &#x60;credentials.yml&#x60; to connect. In case the channel does not support this, the utterances will be returned in the response body. Use &#x60;latest&#x60; to try to send the messages to the latest channel the user used. Currently supported channels are listed in the permitted values for the parameter.
  # @return [ExecuteConversationAction200Response]
  describe 'trigger_conversation_intent test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
