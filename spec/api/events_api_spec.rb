=begin
#FireFawkes Developer API

#External Facing Developer API 

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for LogfaceClient::EventsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'EventsApi' do
  before do
    # run before each test
    @instance = LogfaceClient::EventsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EventsApi' do
    it 'should create an instance of EventsApi' do
      expect(@instance).to be_instance_of(LogfaceClient::EventsApi)
    end
  end

  # unit tests for events
  # Send events
  # This endpoint is used to send data in the form of &#39;events&#39; to the log service. Events have optional metadata.
  # @param events 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :input 
  # @return [EventsReturn]
  describe 'events test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for events_get
  # Retrieve matching events
  # This endpoint allows for retrieving events based on an SPL query. SPL Reference -- http://docs.splunk.com/Documentation/Splunk/latest/SearchReference/WhatsInThisManual 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context_id 
  # @option opts [String] :keywords Whitespace separated keywords
  # @option opts [String] :transform event-by-event transformations
  # @option opts [String] :report report aggregations
  # @option opts [String] :cache Contains the search jobID
  # @option opts [Integer] :count Maximum number of entries to return. Will return fewer if there are fewer to return. Set value to -1 to get all available entries.
  # @option opts [Integer] :index Index of first item to return.
  # @return [QueryResponse]
  describe 'events_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
