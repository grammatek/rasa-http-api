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

# Unit tests for Rasa::HTTP::ResumeEventAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Rasa::HTTP::ResumeEventAllOf do
  let(:instance) { Rasa::HTTP::ResumeEventAllOf.new }

  describe 'test an instance of ResumeEventAllOf' do
    it 'should create an instance of ResumeEventAllOf' do
      expect(instance).to be_instance_of(Rasa::HTTP::ResumeEventAllOf)
    end
  end
  describe 'test attribute "event"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["resume"])
      # validator.allowable_values.each do |value|
      #   expect { instance.event = value }.not_to raise_error
      # end
    end
  end

end
