=begin
#FireFawkes Developer API

#External Facing Developer API 

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for LogfaceClient::SearchApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SearchApi' do
  before do
    # run before each test
    @instance = LogfaceClient::SearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SearchApi' do
    it 'should create an instance of SearchApi' do
      expect(@instance).to be_instance_of(LogfaceClient::SearchApi)
    end
  end

  # unit tests for search_post
  # Retrieve matching events
  # This endpoint allows for retrieving events based on an SPL query. SPL Reference -- http://docs.splunk.com/Documentation/Splunk/latest/SearchReference/WhatsInThisManual 
  # @param query 
  # @param tenant_id ID of the tenant
  # @param [Hash] opts the optional parameters
  # @return [QueryResponse]
  describe 'search_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end