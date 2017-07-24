=begin
#FireFawkes Developer API

#External Facing Developer API 

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LogfaceClient::QueryLogicInfoMetaData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'QueryLogicInfoMetaData' do
  before do
    # run before each test
    @instance = LogfaceClient::QueryLogicInfoMetaData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of QueryLogicInfoMetaData' do
    it 'should create an instance of QueryLogicInfoMetaData' do
      expect(@instance).to be_instance_of(LogfaceClient::QueryLogicInfoMetaData)
    end
  end
  describe 'test attribute "info_message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
