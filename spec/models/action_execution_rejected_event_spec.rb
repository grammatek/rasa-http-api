=begin
#Rasa - Server Endpoints

#The Rasa server provides endpoints to retrieve trackers of conversations as well as endpoints to modify them. Additionally, endpoints for training and testing models are provided.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Rasa::HTTP::ActionExecutionRejectedEvent
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Rasa::HTTP::ActionExecutionRejectedEvent do
  let(:instance) { Rasa::HTTP::ActionExecutionRejectedEvent.new }

  describe 'test an instance of ActionExecutionRejectedEvent' do
    it 'should create an instance of ActionExecutionRejectedEvent' do
      expect(instance).to be_instance_of(Rasa::HTTP::ActionExecutionRejectedEvent)
    end
  end
  describe 'test attribute "event"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["action_execution_rejected"])
      # validator.allowable_values.each do |value|
      #   expect { instance.event = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "timestamp"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
